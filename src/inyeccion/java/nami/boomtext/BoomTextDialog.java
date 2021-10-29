package nami.boomtext;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

/**
* Título: Unknown Client.
* Desarrollador: Unknown-60.
* Código fuente: github.com/Unknown-60
**/

public class BoomTextDialog extends Builder {
    public BoomTextDialog(Context context) {
        super(context);
        Builder title = setTitle("UNKNOWN-60");
        title = setMessage("CODED BY UNKNOWN-60");
        LayoutParams layoutParams = r15;
        LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        LayoutParams layoutParams3 = layoutParams;
        layoutParams3.setMargins(0, 0, 0, 15);
        View view = r15;
        View linearLayout = new LinearLayout(getContext());
        View view2 = view;
        view2.setOrientation(1);
        view2.setPadding(25, 0, 25, 0);
        view = r15;
        linearLayout = new TextView(getContext());
        TextView view3 = view;
        view3.setText("TEXTO");
        view = r15;
        linearLayout = new EditText(getContext());
        View view4 = view;
        view4.setInputType(1);
        view4.setHint("");
        view4.setText(setBoomText());
        view4.setLayoutParams(layoutParams3);
        view = view4;
        AnonymousClass100000000 anonymousClass100000000 = r15;
        AnonymousClass100000000 anonymousClass1000000002 = new TextWatcher(this) {
            private final BoomTextDialog this$0;

            {
                AnonymousClass100000000 anonymousClass100000000 = this;
                this.this$0 = r6;
            }

            static BoomTextDialog access$0(AnonymousClass100000000 anonymousClass100000000) {
                return anonymousClass100000000.this$0;
            }

            @Override
            public void afterTextChanged(Editable editable) {
                boolean commit = PreferenceManager.getDefaultSharedPreferences(this.this$0.getContext()).edit().putString("nami_boom_text", editable.toString()).commit();
            }

            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        };
        view.addTextChangedListener(anonymousClass100000000);
        view = r15;
        linearLayout = new TextView(getContext());
        TextView view5 = view;
        view5.setText("LIMITAR");
        view = r15;
        linearLayout = new EditText(getContext());
        View view6 = view;
        view6.setInputType(2);
        view6.setHint("Cantidad");
        view6.setText(setBoomCount());
        view6.setLayoutParams(layoutParams3);
        view = view6;
        AnonymousClass100000001 anonymousClass100000001 = r15;
        AnonymousClass100000001 anonymousClass1000000012 = new TextWatcher(this) {
            private final BoomTextDialog this$0;

            {
                AnonymousClass100000001 anonymousClass100000001 = this;
                this.this$0 = r6;
            }

            static BoomTextDialog access$0(AnonymousClass100000001 anonymousClass100000001) {
                return anonymousClass100000001.this$0;
            }

            @Override
            public void afterTextChanged(Editable editable) {
                boolean commit = PreferenceManager.getDefaultSharedPreferences(this.this$0.getContext()).edit().putString("nami_boom_count", editable.toString()).commit();
            }

            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        };
        view.addTextChangedListener(anonymousClass100000001);
        view2.addView(view3);
        view2.addView(view4);
        view2.addView(view5);
        view2.addView(view6);
        title = setView(view2);
    }

    public String setBoomCount() {
        return PreferenceManager.getDefaultSharedPreferences(getContext()).getString("nami_boom_count", "5");
    }

    public String setBoomText() {
        return PreferenceManager.getDefaultSharedPreferences(getContext()).getString("nami_boom_text", "FL00D BY IMYL_Team");
    }
}
