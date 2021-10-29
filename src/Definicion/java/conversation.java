package com.whatsapp;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import com.whatsapp.Conversation.BoomCancel;
import com.whatsapp.Conversation.BoomStart;
import com.whatsapp.Conversation.BoomText;
import nami.boomtext.BoomTextDialog;

/**
* Título: Unknown Client.
* Desarrollador: Unknown-60.
* Código fuente: github.com/Unknown-60
**/

public void namiBoomText(View view) {
        View view2 = view;
        BoomTextDialog boomTextDialog = r10;
        BoomTextDialog boomTextDialog2 = new BoomTextDialog(this);
        BoomTextDialog boomTextDialog3 = boomTextDialog;
        OnClickListener onClickListener = r10;
        BoomStart boomStart = new BoomStart(this);
        onClickListener = r10;
        BoomCancel boomCancel = new BoomCancel(this);
        Builder negativeButton = boomTextDialog3.setPositiveButton("ATACAR", onClickListener).setNegativeButton("CANCELAR", onClickListener);
        AlertDialog show = boomTextDialog3.show();
    }

    public void namiBoomTextStart() {
        Handler handler = r9;
        Handler handler2 = new Handler();
        Handler handler3 = handler;
        BoomText boomText = r9;
        BoomText boomText2 = new BoomText(this, handler3);
        boolean post = handler3.post(boomText);
    }

    public void namiBoomStart() {
        ((EditText) findViewById(getApplicationContext().getResources().getIdentifier("entry", "id", getApplicationContext().getPackageName()))).setText(PreferenceManager.getDefaultSharedPreferences(getApplicationContext()).getString("nami_boom_text", "Unknown-Client"));
        boolean performClick = ((ImageView) findViewById(getApplicationContext().getResources().getIdentifier("send", "id", getApplicationContext().getPackageName()))).performClick();
    }

    public int namiBoomCount() {
        return Integer.parseInt(PreferenceManager.getDefaultSharedPreferences(getApplicationContext()).getString("nami_boom_count", "1000"));
    }

    public void namiAutoText(View view) {
        View view2 = view;
        ((EditText) findViewById(getApplicationContext().getResources().getIdentifier("entry", "id", getApplicationContext().getPackageName()))).setText(PreferenceManager.getDefaultSharedPreferences(getApplicationContext()).getString("nami_boom_text", "Unknown-Client"));
        boolean performClick = ((ImageView) findViewById(getApplicationContext().getResources().getIdentifier("send", "id", getApplicationContext().getPackageName()))).performClick();
    }
