.class public Lnami/dialog/colordialog/PromptDialog;
.super Landroid/app/Dialog;
.source "PromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnami/dialog/colordialog/PromptDialog$100000001;,
        Lnami/dialog/colordialog/PromptDialog$100000002;,
        Lnami/dialog/colordialog/PromptDialog$OnPositiveListener;
    }
.end annotation


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final DEFAULT_RADIUS:I = 0x6

.field public static final DIALOG_TYPE_DEFAULT:I = 0x0

.field public static final DIALOG_TYPE_HELP:I = 0x1

.field public static final DIALOG_TYPE_INFO:I = 0x0

.field public static final DIALOG_TYPE_SUCCESS:I = 0x3

.field public static final DIALOG_TYPE_WARNING:I = 0x4

.field public static final DIALOG_TYPE_WRONG:I = 0x2

.field public static ctx:Landroid/content/Context;


# instance fields
.field private mAnimIn:Landroid/view/animation/AnimationSet;

.field private mAnimOut:Landroid/view/animation/AnimationSet;

.field private mBtnText:Ljava/lang/CharSequence;

.field private mContent:Ljava/lang/CharSequence;

.field private mContentTv:Landroid/widget/TextView;

.field private mDialogType:I

.field private mDialogView:Landroid/view/View;

.field private mIsShowAnim:Z

.field private mOnPositiveListener:Lnami/dialog/colordialog/PromptDialog$OnPositiveListener;

.field private mPositiveBtn:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleTv:Landroid/widget/TextView;


# direct methods
.method static final constructor <clinit>()V
    .registers 3

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v2, Lnami/dialog/colordialog/PromptDialog;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lnami/dialog/colordialog/PromptDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    const-string v6, "color_dialog"

    const-string v7, "style"

    move-object v8, v1

    invoke-static {v6, v7, v8}, Lnami/dialog/colordialog/PromptDialog;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object v4, v0

    invoke-direct {v4}, Lnami/dialog/colordialog/PromptDialog;->init()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
    .registers 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v0, v5

    return v0
.end method

.method static synthetic access$1000029(Lnami/dialog/colordialog/PromptDialog;)V
    .registers 5

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lnami/dialog/colordialog/PromptDialog;->callDismiss()V

    return-void
.end method

.method static synthetic access$L1000004(Lnami/dialog/colordialog/PromptDialog;)Landroid/view/View;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lnami/dialog/colordialog/PromptDialog;->mDialogView:Landroid/view/View;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000008(Lnami/dialog/colordialog/PromptDialog;)Lnami/dialog/colordialog/PromptDialog$OnPositiveListener;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lnami/dialog/colordialog/PromptDialog;->mOnPositiveListener:Lnami/dialog/colordialog/PromptDialog$OnPositiveListener;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000004(Lnami/dialog/colordialog/PromptDialog;Landroid/view/View;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lnami/dialog/colordialog/PromptDialog;->mDialogView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$S1000008(Lnami/dialog/colordialog/PromptDialog;Lnami/dialog/colordialog/PromptDialog$OnPositiveListener;)V
    .registers 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lnami/dialog/colordialog/PromptDialog;->mOnPositiveListener:Lnami/dialog/colordialog/PromptDialog$OnPositiveListener;

    return-void
.end method

.method private callDismiss()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private createColorStateList(II)Landroid/content/res/ColorStateList;
    .registers 12

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    move v6, v2

    const/high16 v7, -0x1000000

    const/high16 v8, -0x1000000

    invoke-direct {v4, v5, v6, v7, v8}, Lnami/dialog/colordialog/PromptDialog;->createColorStateList(IIII)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method private createColorStateList(IIII)Landroid/content/res/ColorStateList;
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v10, 0x6

    new-array v10, v10, [I

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    move v13, v2

    aput v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x1

    move v13, v3

    aput v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x2

    move v13, v1

    aput v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x3

    move v13, v3

    aput v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x4

    move v13, v4

    aput v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x5

    move v13, v1

    aput v13, v11, v12

    move-object v6, v10

    const/4 v10, 0x6

    new-array v10, v10, [[I

    move-object v7, v10

    move-object v10, v7

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [I

    fill-array-data v12, :array_b4

    aput-object v12, v10, v11

    move-object v10, v7

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [I

    fill-array-data v12, :array_bc

    aput-object v12, v10, v11

    move-object v10, v7

    const/4 v11, 0x2

    const/4 v12, 0x1

    new-array v12, v12, [I

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    const v15, 0x101009e

    aput v15, v13, v14

    aput-object v12, v10, v11

    move-object v10, v7

    const/4 v11, 0x3

    const/4 v12, 0x1

    new-array v12, v12, [I

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    const v15, 0x101009c

    aput v15, v13, v14

    aput-object v12, v10, v11

    move-object v10, v7

    const/4 v11, 0x4

    const/4 v12, 0x1

    new-array v12, v12, [I

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    const v15, 0x101009d

    aput v15, v13, v14

    aput-object v12, v10, v11

    move-object v10, v7

    const/4 v11, 0x5

    const/4 v12, 0x0

    new-array v12, v12, [I

    aput-object v12, v10, v11

    new-instance v10, Landroid/content/res/ColorStateList;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v7

    move-object v13, v6

    invoke-direct {v11, v12, v13}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v8, v10

    move-object v10, v8

    move-object v0, v10

    return-object v0

    nop

    :array_b4
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_bc
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method private createTriangel(II)Landroid/graphics/Bitmap;
    .registers 13

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    const/4 v5, 0x0

    if-le v4, v5, :cond_b

    move v4, v2

    const/4 v5, 0x0

    if-gt v4, v5, :cond_10

    :cond_b
    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v0, v4

    :goto_f
    return-object v0

    :cond_10
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Lnami/dialog/colordialog/PromptDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Lnami/dialog/colordialog/PromptDialog;->mDialogType:I

    invoke-direct {v8, v9}, Lnami/dialog/colordialog/PromptDialog;->getColorResId(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lnami/dialog/colordialog/PromptDialog;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v0, v4

    goto :goto_f
.end method

.method private dismissWithAnimation(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_f

    move-object v3, v0

    iget-object v3, v3, Lnami/dialog/colordialog/PromptDialog;->mDialogView:Landroid/view/View;

    move-object v4, v0

    iget-object v4, v4, Lnami/dialog/colordialog/PromptDialog;->mAnimOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_e
    return-void

    :cond_f
    move-object v3, v0

    invoke-super {v3}, Landroid/app/Dialog;->dismiss()V

    goto :goto_e
.end method

.method private getBitmap(III)Landroid/graphics/Bitmap;
    .registers 18

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v10, v1

    move v11, v2

    sget-object v12, Lnami/dialog/colordialog/PromptDialog;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v5, v10

    new-instance v10, Landroid/graphics/Canvas;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v5

    invoke-direct {v11, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v6, v10

    new-instance v10, Landroid/graphics/Paint;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    move-object v7, v10

    move-object v10, v7

    move v11, v3

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v10, Landroid/graphics/Path;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    move-object v8, v10

    move-object v10, v8

    const/4 v11, 0x0

    int-to-float v11, v11

    const/4 v12, 0x0

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    move-object v10, v8

    move v11, v1

    int-to-float v11, v11

    const/4 v12, 0x0

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    move-object v10, v8

    move v11, v1

    const/4 v12, 0x2

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    move v12, v2

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    move-object v10, v8

    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    move-object v10, v6

    move-object v11, v8

    move-object v12, v7

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object v10, v5

    move-object v0, v10

    return-object v0
.end method

.method private getColorResId(I)I
    .registers 8

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    const-string v4, "colorPrimary"

    const-string v5, "color"

    invoke-virtual {v3, v4, v5}, Lnami/dialog/colordialog/PromptDialog;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v0, v3

    return v0
.end method

.method private getLogoResId(I)I
    .registers 8

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    const-string v4, "ic_dialog_info"

    const-string v5, "drawable"

    invoke-virtual {v3, v4, v5}, Lnami/dialog/colordialog/PromptDialog;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v0, v3

    return v0
.end method

.method private getSelBtn(I)I
    .registers 8

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    const-string v4, "nami_button"

    const-string v5, "drawable"

    invoke-virtual {v3, v4, v5}, Lnami/dialog/colordialog/PromptDialog;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v0, v3

    return v0
.end method

.method private init()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lnami/dialog/colordialog/PromptDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnami/dialog/colordialog/AnimationLoader;->getInAnimation(Landroid/content/Context;)Landroid/view/animation/AnimationSet;

    move-result-object v3

    iput-object v3, v2, Lnami/dialog/colordialog/PromptDialog;->mAnimIn:Landroid/view/animation/AnimationSet;

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lnami/dialog/colordialog/PromptDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnami/dialog/colordialog/AnimationLoader;->getOutAnimation(Landroid/content/Context;)Landroid/view/animation/AnimationSet;

    move-result-object v3

    iput-object v3, v2, Lnami/dialog/colordialog/PromptDialog;->mAnimOut:Landroid/view/animation/AnimationSet;

    return-void
.end method

.method private initAnimListener()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lnami/dialog/colordialog/PromptDialog;->mAnimOut:Landroid/view/animation/AnimationSet;

    new-instance v3, Lnami/dialog/colordialog/PromptDialog$100000001;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lnami/dialog/colordialog/PromptDialog$100000001;-><init>(Lnami/dialog/colordialog/PromptDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private initListener()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lnami/dialog/colordialog/PromptDialog;->mPositiveBtn:Landroid/widget/TextView;

    new-instance v3, Lnami/dialog/colordialog/PromptDialog$100000002;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lnami/dialog/colordialog/PromptDialog$100000002;-><init>(Lnami/dialog/colordialog/PromptDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v2, v0

    invoke-direct {v2}, Lnami/dialog/colordialog/PromptDialog;->initAnimListener()V

    return-void
.end method

.method private initView()V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object/from16 v2, p0

    move-object v15, v2

    invoke-virtual {v15}, Lnami/dialog/colordialog/PromptDialog;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v16, v2

    const-string v17, "nami_dialog_prompt"

    const-string v18, "layout"

    invoke-virtual/range {v16 .. v18}, Lnami/dialog/colordialog/PromptDialog;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x0

    check-cast v17, Landroid/view/ViewGroup;

    invoke-static/range {v15 .. v17}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    move-object v4, v15

    move-object v15, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Lnami/dialog/colordialog/PromptDialog;->setContentView(Landroid/view/View;)V

    move-object v15, v2

    invoke-direct {v15}, Lnami/dialog/colordialog/PromptDialog;->resizeDialog()V

    move-object v15, v2

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lnami/dialog/colordialog/PromptDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v16

    const v17, 0x1020002

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lnami/dialog/colordialog/PromptDialog;->mDialogView:Landroid/view/View;

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v2

    const-string v18, "tvTitle"

    const-string v19, "id"

    invoke-virtual/range {v17 .. v19}, Lnami/dialog/colordialog/PromptDialog;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v0, v15, Lnami/dialog/colordialog/PromptDialog;->mTitleTv:Landroid/widget/TextView;

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v2

    const-string v18, "tvContent"

    const-string v19, "id"

    invoke-virtual/range {v17 .. v19}, Lnami/dialog/colordialog/PromptDialog;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v0, v15, Lnami/dialog/colordialog/PromptDialog;->mContentTv:Landroid/widget/TextView;

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v2

    const-string v18, "btnPositive"

    const-string v19, "id"

    invoke-virtual/range {v17 .. v19}, Lnami/dialog/colordialog/PromptDialog;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    iput-object v0, v15, Lnami/dialog/colordialog/PromptDialog;->mPositiveBtn:Landroid/widget/TextView;

    move-object v15, v2

    move-object/from16 v16, v2

    const-string v17, "llBtnGroup"

    const-string v18, "id"

    invoke-virtual/range {v16 .. v18}, Lnami/dialog/colordialog/PromptDialog;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lnami/dialog/colordialog/PromptDialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object v5, v15

    move-object v15, v4

    move-object/from16 v16, v2

    const-string v17, "logoIv"

    const-string v18, "id"

    invoke-virtual/range {v16 .. v18}, Lnami/dialog/colordialog/PromptDialog;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object v6, v15

    move-object v15, v6

    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lnami/dialog/colordialog/PromptDialog;->mDialogType:I

    move/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lnami/dialog/colordialog/PromptDialog;->getLogoResId(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move-object v15, v4

    move-object/from16 v16, v2

    const-string v17, "topLayout"

    const-string v18, "id"

    invoke-virtual/range {v16 .. v18}, Lnami/dialog/colordialog/PromptDialog;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    move-object v7, v15

    new-instance v15, Landroid/widget/ImageView;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lnami/dialog/colordialog/PromptDialog;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v8, v15

    move-object v15, v8

    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    const/16 v18, -0x1

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lnami/dialog/colordialog/PromptDialog;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0xa

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lnami/dialog/colordialog/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v19

    invoke-direct/range {v17 .. v19}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v15, v8

    move-object/from16 v16, v2

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lnami/dialog/colordialog/PromptDialog;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lnami/dialog/colordialog/DisplayUtil;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide v19, 0x3fe6666666666666L    # 0.7

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lnami/dialog/colordialog/PromptDialog;->getContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0xa

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lnami/dialog/colordialog/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v18

    invoke-direct/range {v16 .. v18}, Lnami/dialog/colordialog/PromptDialog;->createTriangel(II)Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lnami/dialog/colordialog/PromptDialog;->mPositiveBtn:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lnami/dialog/colordialog/PromptDialog;->setBtnBackground(Landroid/widget/TextView;)V

    move-object v15, v2

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v16}, Lnami/dialog/colordialog/PromptDialog;->setBottomCorners(Landroid/view/View;)V

    move-object v15, v2

    invoke-virtual {v15}, Lnami/dialog/colordialog/PromptDialog;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x6

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lnami/dialog/colordialog/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v15

    move v9, v15

    const/16 v15, 0x8

    new-array v15, v15, [F

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    move/from16 v18, v9

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x1

    move/from16 v18, v9

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x2

    move/from16 v18, v9

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x3

    move/from16 v18, v9

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x4

    const/16 v18, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x5

    const/16 v18, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x6

    const/16 v18, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x7

    const/16 v18, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    move-object v10, v15

    new-instance v15, Landroid/graphics/drawable/shapes/RoundRectShape;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v10

    const/16 v18, 0x0

    check-cast v18, Landroid/graphics/RectF;

    const/16 v19, 0x0

    check-cast v19, [F

    invoke-direct/range {v16 .. v19}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    move-object v11, v15

    new-instance v15, Landroid/graphics/drawable/ShapeDrawable;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v11

    invoke-direct/range {v16 .. v17}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object v12, v15

    move-object v15, v12

    invoke-virtual {v15}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v15

    sget-object v16, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object v15, v12

    invoke-virtual {v15}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v15

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lnami/dialog/colordialog/PromptDialog;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lnami/dialog/colordialog/PromptDialog;->mDialogType:I

    move/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lnami/dialog/colordialog/PromptDialog;->getColorResId(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setColor(I)V

    move-object v15, v2

    move-object/from16 v16, v2

    const-string v17, "llTop"

    const-string v18, "id"

    invoke-virtual/range {v16 .. v18}, Lnami/dialog/colordialog/PromptDialog;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lnami/dialog/colordialog/PromptDialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    move-object v13, v15

    move-object v15, v13

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v15, v2

    iget-object v15, v15, Lnami/dialog/colordialog/PromptDialog;->mTitleTv:Landroid/widget/TextView;

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lnami/dialog/colordialog/PromptDialog;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v15, v2

    iget-object v15, v15, Lnami/dialog/colordialog/PromptDialog;->mContentTv:Landroid/widget/TextView;

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lnami/dialog/colordialog/PromptDialog;->mContent:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v15, v2

    iget-object v15, v15, Lnami/dialog/colordialog/PromptDialog;->mPositiveBtn:Landroid/widget/TextView;

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lnami/dialog/colordialog/PromptDialog;->mBtnText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private resizeDialog()V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lnami/dialog/colordialog/PromptDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Lnami/dialog/colordialog/PromptDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lnami/dialog/colordialog/DisplayUtil;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-double v5, v5

    const-wide v7, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object v4, v0

    invoke-virtual {v4}, Lnami/dialog/colordialog/PromptDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private setBottomCorners(Landroid/view/View;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    invoke-virtual {v8}, Lnami/dialog/colordialog/PromptDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x6

    int-to-float v9, v9

    invoke-static {v8, v9}, Lnami/dialog/colordialog/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v8

    move v3, v8

    const/16 v8, 0x8

    new-array v8, v8, [F

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    const/4 v11, 0x0

    int-to-float v11, v11

    aput v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x1

    const/4 v11, 0x0

    int-to-float v11, v11

    aput v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x2

    const/4 v11, 0x0

    int-to-float v11, v11

    aput v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x3

    const/4 v11, 0x0

    int-to-float v11, v11

    aput v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x4

    move v11, v3

    int-to-float v11, v11

    aput v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x5

    move v11, v3

    int-to-float v11, v11

    aput v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x6

    move v11, v3

    int-to-float v11, v11

    aput v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x7

    move v11, v3

    int-to-float v11, v11

    aput v11, v9, v10

    move-object v4, v8

    new-instance v8, Landroid/graphics/drawable/shapes/RoundRectShape;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v4

    const/4 v11, 0x0

    check-cast v11, Landroid/graphics/RectF;

    const/4 v12, 0x0

    check-cast v12, [F

    invoke-direct {v9, v10, v11, v12}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    move-object v5, v8

    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v5

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object v6, v8

    move-object v8, v6

    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    move-object v8, v6

    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setBtnBackground(Landroid/widget/TextView;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lnami/dialog/colordialog/PromptDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lnami/dialog/colordialog/PromptDialog;->mDialogType:I

    invoke-direct {v6, v7}, Lnami/dialog/colordialog/PromptDialog;->getColorResId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Lnami/dialog/colordialog/PromptDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v7, v0

    const-string v8, "color_dialog"

    const-string v9, "color"

    invoke-virtual {v7, v8, v9}, Lnami/dialog/colordialog/PromptDialog;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lnami/dialog/colordialog/PromptDialog;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lnami/dialog/colordialog/PromptDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lnami/dialog/colordialog/PromptDialog;->mDialogType:I

    invoke-direct {v5, v6}, Lnami/dialog/colordialog/PromptDialog;->getSelBtn(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private startWithAnimation(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_e

    move-object v3, v0

    iget-object v3, v3, Lnami/dialog/colordialog/PromptDialog;->mDialogView:Landroid/view/View;

    move-object v4, v0

    iget-object v4, v4, Lnami/dialog/colordialog/PromptDialog;->mAnimIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_e
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    iget-boolean v3, v3, Lnami/dialog/colordialog/PromptDialog;->mIsShowAnim:Z

    invoke-direct {v2, v3}, Lnami/dialog/colordialog/PromptDialog;->dismissWithAnimation(Z)V

    return-void
.end method

.method public getContentTextView()Landroid/widget/TextView;
    .registers 4

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lnami/dialog/colordialog/PromptDialog;->mContentTv:Landroid/widget/TextView;

    move-object v0, v2

    return-object v0
.end method

.method public getDialogType()I
    .registers 4

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lnami/dialog/colordialog/PromptDialog;->mDialogType:I

    move v0, v2

    return v0
.end method

.method public getID(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lnami/dialog/colordialog/PromptDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Lnami/dialog/colordialog/PromptDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .registers 4

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lnami/dialog/colordialog/PromptDialog;->mTitleTv:Landroid/widget/TextView;

    move-object v0, v2

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    move-object v3, v0

    invoke-virtual {v3}, Lnami/dialog/colordialog/PromptDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lnami/dialog/colordialog/PromptDialog;->ctx:Landroid/content/Context;

    move-object v3, v0

    invoke-direct {v3}, Lnami/dialog/colordialog/PromptDialog;->initView()V

    move-object v3, v0

    invoke-direct {v3}, Lnami/dialog/colordialog/PromptDialog;->initListener()V

    return-void
.end method

.method protected onStart()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/app/Dialog;->onStart()V

    move-object v2, v0

    move-object v3, v0

    iget-boolean v3, v3, Lnami/dialog/colordialog/PromptDialog;->mIsShowAnim:Z

    invoke-direct {v2, v3}, Lnami/dialog/colordialog/PromptDialog;->startWithAnimation(Z)V

    return-void
.end method

.method public setAnimationEnable(Z)Lnami/dialog/colordialog/PromptDialog;
    .registers 7

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lnami/dialog/colordialog/PromptDialog;->mIsShowAnim:Z

    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setAnimationIn(Landroid/view/animation/AnimationSet;)Lnami/dialog/colordialog/PromptDialog;
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnami/dialog/colordialog/PromptDialog;->mAnimIn:Landroid/view/animation/AnimationSet;

    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setAnimationOut(Landroid/view/animation/AnimationSet;)Lnami/dialog/colordialog/PromptDialog;
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnami/dialog/colordialog/PromptDialog;->mAnimOut:Landroid/view/animation/AnimationSet;

    move-object v3, v0

    invoke-direct {v3}, Lnami/dialog/colordialog/PromptDialog;->initAnimListener()V

    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setContentText(I)Lnami/dialog/colordialog/PromptDialog;
    .registers 8

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lnami/dialog/colordialog/PromptDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnami/dialog/colordialog/PromptDialog;->setContentText(Ljava/lang/CharSequence;)Lnami/dialog/colordialog/PromptDialog;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lnami/dialog/colordialog/PromptDialog;
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnami/dialog/colordialog/PromptDialog;->mContent:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setDialogType(I)Lnami/dialog/colordialog/PromptDialog;
    .registers 7

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lnami/dialog/colordialog/PromptDialog;->mDialogType:I

    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setPositiveListener(ILnami/dialog/colordialog/PromptDialog$OnPositiveListener;)Lnami/dialog/colordialog/PromptDialog;
    .registers 10

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lnami/dialog/colordialog/PromptDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lnami/dialog/colordialog/PromptDialog;->setPositiveListener(Ljava/lang/CharSequence;Lnami/dialog/colordialog/PromptDialog$OnPositiveListener;)Lnami/dialog/colordialog/PromptDialog;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public setPositiveListener(Ljava/lang/CharSequence;Lnami/dialog/colordialog/PromptDialog$OnPositiveListener;)Lnami/dialog/colordialog/PromptDialog;
    .registers 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lnami/dialog/colordialog/PromptDialog;->mBtnText:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lnami/dialog/colordialog/PromptDialog;->setPositiveListener(Lnami/dialog/colordialog/PromptDialog$OnPositiveListener;)Lnami/dialog/colordialog/PromptDialog;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public setPositiveListener(Lnami/dialog/colordialog/PromptDialog$OnPositiveListener;)Lnami/dialog/colordialog/PromptDialog;
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnami/dialog/colordialog/PromptDialog;->mOnPositiveListener:Lnami/dialog/colordialog/PromptDialog$OnPositiveListener;

    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setTitleText(Ljava/lang/CharSequence;)Lnami/dialog/colordialog/PromptDialog;
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnami/dialog/colordialog/PromptDialog;->mTitle:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method
