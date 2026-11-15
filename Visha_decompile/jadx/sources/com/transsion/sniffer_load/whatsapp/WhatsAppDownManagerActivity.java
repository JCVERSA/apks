package com.transsion.sniffer_load.whatsapp;

import android.os.Bundle;
import com.transsion.playercommon.activities.BaseShowAudioVideoListActivity;
import com.transsion.sniffer_load.R;
import defpackage.a64;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0014¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0006H\u0017¢\u0006\u0004\b\u000f\u0010\u0003¨\u0006\u0010"}, d2 = {"Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownManagerActivity;", "Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;", MethodDecl.initName, "()V", "Landroid/os/Bundle;", "savedInstanceState", "Lzfb;", "onCreate", "(Landroid/os/Bundle;)V", "", "setBackground", "", "loadSkin", "(Z)I", "initFragment", "onBackPressed", "sniffer_load_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WhatsAppDownManagerActivity extends BaseShowAudioVideoListActivity {
    public final void initFragment() {
        a64.i(this, (WhatsAppDownloadFragment) WhatsAppDownloadFragment.INSTANCE.a(false).setBaseActivity(this), false);
    }

    @Override
    public int loadSkin(boolean setBackground) {
        return super.loadSkin(false);
    }

    @Override
    public void onBackPressed() {
        if (a64.a(this)) {
            return;
        }
        super.onBackPressed();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_container);
        setDefaultWindowBackground();
        initFragment();
    }
}
