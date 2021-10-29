package nami.dialog.colordialog;

import android.app.Dialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/**
* Título: Unknown Client.
* Desarrollador: Unknown-60.
* Código fuente: github.com/Unknown-60
**/

public class PromptDialog extends Dialog {
    private static final Config BITMAP_CONFIG = Config.ARGB_8888;
    private static final int DEFAULT_RADIUS = 6;
    public static final int DIALOG_TYPE_DEFAULT = 0;
    public static final int DIALOG_TYPE_HELP = 1;
    public static final int DIALOG_TYPE_INFO = 0;
    public static final int DIALOG_TYPE_SUCCESS = 3;
    public static final int DIALOG_TYPE_WARNING = 4;
    public static final int DIALOG_TYPE_WRONG = 2;
    public static Context ctx;
    private AnimationSet mAnimIn;
    private AnimationSet mAnimOut;
    private CharSequence mBtnText;
    private CharSequence mContent;
    private TextView mContentTv;
    private int mDialogType;
    private View mDialogView;
    private boolean mIsShowAnim;
    private OnPositiveListener mOnPositiveListener;
    private TextView mPositiveBtn;
    private CharSequence mTitle;
    private TextView mTitleTv;

    public interface OnPositiveListener {
        void onClick(PromptDialog promptDialog);
    }

    public PromptDialog(Context context) {
        this(context, DIALOG_TYPE_INFO);
    }

    public PromptDialog(Context context, int i) {
        Context context2 = context;
        int i2 = i;
        super(context2, a("color_dialog", "style", context2));
        init();
    }

    public static int a(String str, String str2, Context context) {
        Context context2 = context;
        return context2.getResources().getIdentifier(str, str2, context2.getPackageName());
    }

    private void callDismiss() {
        super.dismiss();
    }

    private ColorStateList createColorStateList(int i, int i2) {
        return createColorStateList(i, i2, -16777216, -16777216);
    }

    private ColorStateList createColorStateList(int i, int i2, int i3, int i4) {
        PromptDialog promptDialog = this;
        int i5 = i;
        int i6 = i3;
        int i7 = i4;
        int[] iArr = new int[DEFAULT_RADIUS];
        int[] iArr2 = iArr;
        iArr[DIALOG_TYPE_INFO] = i2;
        iArr = iArr2;
        iArr2 = iArr;
        iArr[DIALOG_TYPE_HELP] = i6;
        iArr = iArr2;
        iArr2 = iArr;
        iArr[DIALOG_TYPE_WRONG] = i5;
        iArr = iArr2;
        iArr2 = iArr;
        iArr[DIALOG_TYPE_SUCCESS] = i6;
        iArr = iArr2;
        iArr2 = iArr;
        iArr[DIALOG_TYPE_WARNING] = i7;
        iArr = iArr2;
        iArr2 = iArr;
        iArr[5] = i5;
        int[] iArr3 = iArr2;
        int[][] iArr4 = new int[DEFAULT_RADIUS][];
        iArr4[DIALOG_TYPE_INFO] = new int[]{16842919, 16842910};
        iArr4[DIALOG_TYPE_HELP] = new int[]{16842910, 16842908};
        int[][] iArr5 = iArr4;
        iArr = new int[DIALOG_TYPE_HELP];
        int[] iArr6 = iArr;
        iArr[DIALOG_TYPE_INFO] = 16842910;
        iArr5[DIALOG_TYPE_WRONG] = iArr6;
        iArr5 = iArr4;
        iArr = new int[DIALOG_TYPE_HELP];
        iArr6 = iArr;
        iArr[DIALOG_TYPE_INFO] = 16842908;
        iArr5[DIALOG_TYPE_SUCCESS] = iArr6;
        iArr5 = iArr4;
        iArr = new int[DIALOG_TYPE_HELP];
        iArr6 = iArr;
        iArr[DIALOG_TYPE_INFO] = 16842909;
        iArr5[DIALOG_TYPE_WARNING] = iArr6;
        iArr4[5] = new int[DIALOG_TYPE_INFO];
        ColorStateList colorStateList = r16;
        ColorStateList colorStateList2 = new ColorStateList(iArr4, iArr3);
        return colorStateList;
    }

    private Bitmap createTriangel(int i, int i2) {
        int i3 = i;
        int i4 = i2;
        return (i3 <= DIALOG_TYPE_INFO || i4 <= DIALOG_TYPE_INFO) ? (Bitmap) null : getBitmap(i3, i4, getContext().getResources().getColor(getColorResId(this.mDialogType)));
    }

    private void dismissWithAnimation(boolean z) {
        Dialog dialog = this;
        if (z) {
            dialog.mDialogView.startAnimation(dialog.mAnimOut);
        } else {
            super.dismiss();
        }
    }

    private Bitmap getBitmap(int i, int i2, int i3) {
        PromptDialog promptDialog = this;
        int i4 = i;
        int i5 = i2;
        int i6 = i3;
        Bitmap createBitmap = Bitmap.createBitmap(i4, i5, BITMAP_CONFIG);
        Canvas canvas = r13;
        Canvas canvas2 = new Canvas(createBitmap);
        Canvas canvas3 = canvas;
        Paint paint = r13;
        Paint paint2 = new Paint(DIALOG_TYPE_HELP);
        Paint paint3 = paint;
        paint3.setColor(i6);
        Path path = r13;
        Path path2 = new Path();
        Path path3 = path;
        path3.moveTo((float) DIALOG_TYPE_INFO, (float) DIALOG_TYPE_INFO);
        path3.lineTo((float) i4, (float) DIALOG_TYPE_INFO);
        path3.lineTo((float) (i4 / DIALOG_TYPE_WRONG), (float) i5);
        path3.close();
        canvas3.drawPath(path3, paint3);
        return createBitmap;
    }

    private int getColorResId(int i) {
        int i2 = i;
        return getID("colorPrimary", "color");
    }

    private int getLogoResId(int i) {
        int i2 = i;
        return getID("ic_dialog_info", "drawable");
    }

    private int getSelBtn(int i) {
        int i2 = i;
        return getID("nami_button", "drawable");
    }

    private void init() {
        this.mAnimIn = AnimationLoader.getInAnimation(getContext());
        this.mAnimOut = AnimationLoader.getOutAnimation(getContext());
    }

    private void initAnimListener() {
        AnimationSet animationSet = this.mAnimOut;
        AnonymousClass100000001 anonymousClass100000001 = r6;
        AnonymousClass100000001 anonymousClass1000000012 = new AnimationListener(this) {
            private final PromptDialog this$0;

            {
                AnonymousClass100000001 anonymousClass100000001 = this;
                this.this$0 = r6;
            }

            static PromptDialog access$0(AnonymousClass100000001 anonymousClass100000001) {
                return anonymousClass100000001.this$0;
            }

            @Override
            public void onAnimationEnd(Animation animation) {
                Animation animation2 = animation;
                View access$L1000004 = this.this$0.mDialogView;
                AnonymousClass100000000 anonymousClass100000000 = r7;
                AnonymousClass100000000 anonymousClass1000000002 = new Runnable(this) {
                    private final AnonymousClass100000001 this$0;

                    {
                        AnonymousClass100000000 anonymousClass100000000 = this;
                        this.this$0 = r6;
                    }

                    static AnonymousClass100000001 access$0(AnonymousClass100000000 anonymousClass100000000) {
                        return anonymousClass100000000.this$0;
                    }

                    @Override
                    public void run() {
                        AnonymousClass100000001.access$0(this.this$0).callDismiss();
                    }
                };
                boolean post = access$L1000004.post(anonymousClass100000000);
            }

            @Override
            public void onAnimationRepeat(Animation animation) {
            }

            @Override
            public void onAnimationStart(Animation animation) {
            }
        };
        animationSet.setAnimationListener(anonymousClass100000001);
    }

    private void initListener() {
        TextView textView = this.mPositiveBtn;
        AnonymousClass100000002 anonymousClass100000002 = r6;
        AnonymousClass100000002 anonymousClass1000000022 = new OnClickListener(this) {
            private final PromptDialog this$0;

            {
                AnonymousClass100000002 anonymousClass100000002 = this;
                this.this$0 = r6;
            }

            static PromptDialog access$0(AnonymousClass100000002 anonymousClass100000002) {
                return anonymousClass100000002.this$0;
            }

            @Override
            public void onClick(View view) {
                View view2 = view;
                if (this.this$0.mOnPositiveListener != null) {
                    r0.this$0.mOnPositiveListener.onClick(r0.this$0);
                }
            }
        };
        textView.setOnClickListener(anonymousClass100000002);
        initAnimListener();
    }

    private void initView() {
        View inflate = View.inflate(getContext(), getID("nami_dialog_prompt", "layout"), (ViewGroup) null);
        setContentView(inflate);
        resizeDialog();
        this.mDialogView = getWindow().getDecorView().findViewById(16908290);
        this.mTitleTv = (TextView) inflate.findViewById(getID("tvTitle", "id"));
        this.mContentTv = (TextView) inflate.findViewById(getID("tvContent", "id"));
        this.mPositiveBtn = (TextView) inflate.findViewById(getID("btnPositive", "id"));
        View findViewById = findViewById(getID("llBtnGroup", "id"));
        ((ImageView) inflate.findViewById(getID("logoIv", "id"))).setBackgroundResource(getLogoResId(this.mDialogType));
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(getID("topLayout", "id"));
        View view = r21;
        View imageView = new ImageView(getContext());
        View view2 = view;
        view = view2;
        LayoutParams layoutParams = r21;
        LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, DisplayUtil.dp2px(getContext(), (float) 10));
        view.setLayoutParams(layoutParams);
        view2.setImageBitmap(createTriangel((int) (((double) DisplayUtil.getScreenSize(getContext()).x) * 0.7d), DisplayUtil.dp2px(getContext(), (float) 10)));
        linearLayout.addView(view2);
        setBtnBackground(this.mPositiveBtn);
        setBottomCorners(findViewById);
        int dp2px = DisplayUtil.dp2px(getContext(), (float) DEFAULT_RADIUS);
        r21 = new float[8];
        float[] fArr = r21;
        r21[DIALOG_TYPE_INFO] = (float) dp2px;
        r21 = fArr;
        fArr = r21;
        r21[DIALOG_TYPE_HELP] = (float) dp2px;
        r21 = fArr;
        fArr = r21;
        r21[DIALOG_TYPE_WRONG] = (float) dp2px;
        r21 = fArr;
        fArr = r21;
        r21[DIALOG_TYPE_SUCCESS] = (float) dp2px;
        r21 = fArr;
        fArr = r21;
        r21[DIALOG_TYPE_WARNING] = (float) DIALOG_TYPE_INFO;
        r21 = fArr;
        fArr = r21;
        r21[5] = (float) DIALOG_TYPE_INFO;
        r21 = fArr;
        fArr = r21;
        r21[DEFAULT_RADIUS] = (float) DIALOG_TYPE_INFO;
        r21 = fArr;
        fArr = r21;
        r21[7] = (float) DIALOG_TYPE_INFO;
        float[] fArr2 = fArr;
        Shape shape = r21;
        Shape roundRectShape = new RoundRectShape(fArr2, (RectF) null, (float[]) null);
        Shape shape2 = shape;
        Drawable drawable = r21;
        Drawable shapeDrawable = new ShapeDrawable(shape2);
        Drawable drawable2 = drawable;
        drawable2.getPaint().setStyle(Style.FILL);
        drawable2.getPaint().setColor(getContext().getResources().getColor(getColorResId(this.mDialogType)));
        ((LinearLayout) findViewById(getID("llTop", "id"))).setBackgroundDrawable(drawable2);
        this.mTitleTv.setText(this.mTitle);
        this.mContentTv.setText(this.mContent);
        this.mPositiveBtn.setText(this.mBtnText);
    }

    private void resizeDialog() {
        LayoutParams attributes = getWindow().getAttributes();
        attributes.width = (int) (((double) DisplayUtil.getScreenSize(getContext()).x) * 0.7d);
        getWindow().setAttributes(attributes);
    }

    private void setBottomCorners(View view) {
        View view2 = view;
        int dp2px = DisplayUtil.dp2px(getContext(), (float) DEFAULT_RADIUS);
        r13 = new float[8];
        float[] fArr = r13;
        r13[DIALOG_TYPE_INFO] = (float) DIALOG_TYPE_INFO;
        r13 = fArr;
        fArr = r13;
        r13[DIALOG_TYPE_HELP] = (float) DIALOG_TYPE_INFO;
        r13 = fArr;
        fArr = r13;
        r13[DIALOG_TYPE_WRONG] = (float) DIALOG_TYPE_INFO;
        r13 = fArr;
        fArr = r13;
        r13[DIALOG_TYPE_SUCCESS] = (float) DIALOG_TYPE_INFO;
        r13 = fArr;
        fArr = r13;
        r13[DIALOG_TYPE_WARNING] = (float) dp2px;
        r13 = fArr;
        fArr = r13;
        r13[5] = (float) dp2px;
        r13 = fArr;
        fArr = r13;
        r13[DEFAULT_RADIUS] = (float) dp2px;
        r13 = fArr;
        fArr = r13;
        r13[7] = (float) dp2px;
        float[] fArr2 = fArr;
        Shape shape = r13;
        Shape roundRectShape = new RoundRectShape(fArr2, (RectF) null, (float[]) null);
        Shape shape2 = shape;
        Drawable drawable = r13;
        Drawable shapeDrawable = new ShapeDrawable(shape2);
        Drawable drawable2 = drawable;
        drawable2.getPaint().setColor(-1);
        drawable2.getPaint().setStyle(Style.FILL);
        view2.setBackgroundDrawable(drawable2);
    }

    private void setBtnBackground(TextView textView) {
        TextView textView2 = textView;
        textView2.setTextColor(createColorStateList(getContext().getResources().getColor(getColorResId(this.mDialogType)), getContext().getResources().getColor(getID("color_dialog", "color"))));
        textView2.setBackgroundDrawable(getContext().getResources().getDrawable(getSelBtn(this.mDialogType)));
    }

    private void startWithAnimation(boolean z) {
        PromptDialog promptDialog = this;
        if (z) {
            promptDialog.mDialogView.startAnimation(promptDialog.mAnimIn);
        }
    }

    @Override
    public void dismiss() {
        dismissWithAnimation(this.mIsShowAnim);
    }

    public TextView getContentTextView() {
        return this.mContentTv;
    }

    public int getDialogType() {
        return this.mDialogType;
    }

    public int getID(String str, String str2) {
        return getContext().getResources().getIdentifier(str, str2, getContext().getPackageName());
    }

    public TextView getTitleTextView() {
        return this.mTitleTv;
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ctx = getContext();
        initView();
        initListener();
    }

    @Override
    protected void onStart() {
        super.onStart();
        startWithAnimation(this.mIsShowAnim);
    }

    public PromptDialog setAnimationEnable(boolean z) {
        this.mIsShowAnim = z;
        return this;
    }

    public PromptDialog setAnimationIn(AnimationSet animationSet) {
        this.mAnimIn = animationSet;
        return this;
    }

    public PromptDialog setAnimationOut(AnimationSet animationSet) {
        this.mAnimOut = animationSet;
        initAnimListener();
        return this;
    }

    public PromptDialog setContentText(int i) {
        return setContentText(getContext().getString(i));
    }

    public PromptDialog setContentText(CharSequence charSequence) {
        this.mContent = charSequence;
        return this;
    }

    public PromptDialog setDialogType(int i) {
        this.mDialogType = i;
        return this;
    }

    public PromptDialog setPositiveListener(int i, OnPositiveListener onPositiveListener) {
        return setPositiveListener(getContext().getString(i), onPositiveListener);
    }

    public PromptDialog setPositiveListener(CharSequence charSequence, OnPositiveListener onPositiveListener) {
        OnPositiveListener onPositiveListener2 = onPositiveListener;
        this.mBtnText = charSequence;
        return setPositiveListener(onPositiveListener2);
    }

    public PromptDialog setPositiveListener(OnPositiveListener onPositiveListener) {
        this.mOnPositiveListener = onPositiveListener;
        return this;
    }

    public PromptDialog setTitleText(CharSequence charSequence) {
        this.mTitle = charSequence;
        return this;
    }
}
