package com.transsion.playercommon.share.constants;

import com.transsion.hubsdk.aosp.app.TranAospActivityTaskManager;
import com.transsion.sniffer_load.data.WhatsBookmark;
import defpackage.db3;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.enums.a;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/transsion/playercommon/share/constants/SharePlatformConfig;", "", "packageName", "", "displayName", MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getPackageName", "()Ljava/lang/String;", "getDisplayName", "TELEGRAM", "WHATSAPP", "MESSENGER", "WHATSAPP_BUSINESS", "MESSAGES", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public enum SharePlatformConfig {
    TELEGRAM("org.telegram.messenger", "Telegram"),
    WHATSAPP("com.whatsapp", WhatsBookmark.URL_WHATSAPP),
    MESSENGER(TranAospActivityTaskManager.FACEBOOKMESSAGE, "Messenger"),
    WHATSAPP_BUSINESS("com.whatsapp.w4b", "WhatsApp Business"),
    MESSAGES("com.google.android.apps.messaging", "Messages");

    private static final db3 $ENTRIES = a.a(values());
    private final String displayName;
    private final String packageName;

    SharePlatformConfig(String str, String str2) {
        this.packageName = str;
        this.displayName = str2;
    }

    public static db3 getEntries() {
        return $ENTRIES;
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    public final String getPackageName() {
        return this.packageName;
    }
}
