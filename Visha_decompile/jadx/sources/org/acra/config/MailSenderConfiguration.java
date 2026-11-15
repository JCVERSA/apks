package org.acra.config;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\u00020\u0001BC\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\nJ\b\u0010\u0002\u001a\u00020\u0003H\u0016R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\fR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f¨\u0006\u0013"}, d2 = {"Lorg/acra/config/MailSenderConfiguration;", "Lorg/acra/config/Configuration;", "enabled", "", "mailTo", "", "reportAsFile", "reportFileName", "subject", TtmlNode.TAG_BODY, "(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getBody", "()Ljava/lang/String;", "getEnabled", "()Z", "getMailTo", "getReportAsFile", "getReportFileName", "getSubject", "acra-mail_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MailSenderConfiguration implements Configuration {
    private final String body;
    private final boolean enabled;
    private final String mailTo;
    private final boolean reportAsFile;
    private final String reportFileName;
    private final String subject;

    public MailSenderConfiguration(boolean z, String str, boolean z2, String str2, String str3, String str4) {
        y45.j(str, "mailTo");
        y45.j(str2, "reportFileName");
        this.enabled = z;
        this.mailTo = str;
        this.reportAsFile = z2;
        this.reportFileName = str2;
        this.subject = str3;
        this.body = str4;
    }

    @Override
    public boolean getEnabled() {
        return this.enabled;
    }

    public final String getBody() {
        return this.body;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final String getMailTo() {
        return this.mailTo;
    }

    public final boolean getReportAsFile() {
        return this.reportAsFile;
    }

    public final String getReportFileName() {
        return this.reportFileName;
    }

    public final String getSubject() {
        return this.subject;
    }

    public MailSenderConfiguration(boolean z, String str, boolean z2, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z, str, (i & 4) != 0 ? true : z2, (i & 8) != 0 ? "ACRA-report.stacktrace" : str2, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? null : str4);
    }
}
