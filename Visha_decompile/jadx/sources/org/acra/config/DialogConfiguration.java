package org.acra.config;

import android.R;
import android.app.Activity;
import androidx.annotation.DrawableRes;
import androidx.annotation.StyleRes;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.acra.dialog.CrashReportDialog;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0014\u0018\u00002\u00020\u0001B\u0081\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\n\b\u0003\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0003\u0010\u0010\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u0011J\b\u0010\u0002\u001a\u00020\u0003H\u0016R\u0013\u0010\n\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0013R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0013R\u0019\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0015\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b\u001b\u0010\u001cR\u0015\u0010\u0010\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b\u001e\u0010\u001cR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0013R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0013¨\u0006!"}, d2 = {"Lorg/acra/config/DialogConfiguration;", "Lorg/acra/config/Configuration;", "enabled", "", "reportDialogClass", "Ljava/lang/Class;", "Landroid/app/Activity;", "positiveButtonText", "", "negativeButtonText", "commentPrompt", "emailPrompt", "resIcon", "", "text", "title", "resTheme", "(ZLjava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "getCommentPrompt", "()Ljava/lang/String;", "getEmailPrompt", "getEnabled", "()Z", "getNegativeButtonText", "getPositiveButtonText", "getReportDialogClass", "()Ljava/lang/Class;", "getResIcon", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getResTheme", "getText", "getTitle", "acra-dialog_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class DialogConfiguration implements Configuration {
    private final String commentPrompt;
    private final String emailPrompt;
    private final boolean enabled;
    private final String negativeButtonText;
    private final String positiveButtonText;
    private final Class<? extends Activity> reportDialogClass;
    private final Integer resIcon;
    private final Integer resTheme;
    private final String text;
    private final String title;

    public DialogConfiguration() {
        this(false, null, null, null, null, null, null, null, null, null, AnalyticsListener.EVENT_DRM_KEYS_LOADED, null);
    }

    @Override
    public boolean getEnabled() {
        return this.enabled;
    }

    public final String getCommentPrompt() {
        return this.commentPrompt;
    }

    public final String getEmailPrompt() {
        return this.emailPrompt;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final String getNegativeButtonText() {
        return this.negativeButtonText;
    }

    public final String getPositiveButtonText() {
        return this.positiveButtonText;
    }

    public final Class<? extends Activity> getReportDialogClass() {
        return this.reportDialogClass;
    }

    public final Integer getResIcon() {
        return this.resIcon;
    }

    public final Integer getResTheme() {
        return this.resTheme;
    }

    public final String getText() {
        return this.text;
    }

    public final String getTitle() {
        return this.title;
    }

    public DialogConfiguration(boolean z, Class<? extends Activity> cls, String str, String str2, String str3, String str4, @DrawableRes Integer num, String str5, String str6, @StyleRes Integer num2) {
        y45.j(cls, "reportDialogClass");
        this.enabled = z;
        this.reportDialogClass = cls;
        this.positiveButtonText = str;
        this.negativeButtonText = str2;
        this.commentPrompt = str3;
        this.emailPrompt = str4;
        this.resIcon = num;
        this.text = str5;
        this.title = str6;
        this.resTheme = num2;
    }

    public DialogConfiguration(boolean z, Class cls, String str, String str2, String str3, String str4, Integer num, String str5, String str6, Integer num2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? CrashReportDialog.class : cls, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? null : str4, (i & 64) != 0 ? Integer.valueOf(R.drawable.ic_dialog_alert) : num, (i & 128) != 0 ? null : str5, (i & 256) != 0 ? null : str6, (i & 512) == 0 ? num2 : null);
    }
}
