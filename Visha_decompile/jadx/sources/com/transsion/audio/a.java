package com.transsion.audio;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.transsion.audio.a;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.dbdata.beans.media.AudioItem;
import defpackage.av3;
import defpackage.y45;

public abstract class a {
    public static final int b(Context context, float f) {
        y45.j(context, "<this>");
        return com.transsion.utils.a.d(context, f);
    }

    public static final void c(String str) {
        y45.j(str, "<this>");
        Log.i("audio", "audio touch " + str);
    }

    public static final void d(TextView textView, AudioItem audioItem) {
        String str;
        y45.j(textView, "<this>");
        if (audioItem == null || (str = audioItem.artistName) == null) {
            AudioItem audioItemP = MusicPlayManager.S().P();
            str = audioItemP != null ? audioItemP.artistName : null;
        }
        textView.setText(str);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0019  */
    public static final void e(TextView textView, AudioItem audioItem) {
        String strQ;
        y45.j(textView, "<this>");
        if (audioItem == null) {
            strQ = "";
        } else {
            strQ = audioItem.displayName;
            if (strQ == null) {
                Uri uri = audioItem.uri;
                if (uri != null) {
                    strQ = av3.q(uri.getPath());
                } else {
                    strQ = "";
                }
            }
        }
        textView.setText(strQ);
    }

    public static final void f(final View view) {
        y45.j(view, "<this>");
        view.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return a.g(view, view2, motionEvent);
            }
        });
    }

    public static final boolean g(View view, View view2, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            view.getParent().requestDisallowInterceptTouchEvent(false);
        } else {
            view.getParent().requestDisallowInterceptTouchEvent(true);
        }
        return true;
    }
}
