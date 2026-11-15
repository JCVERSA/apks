package org.acra.sender;

import android.content.Context;
import defpackage.us8;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.acra.config.CoreConfiguration;
import org.acra.config.MailSenderConfiguration;
import org.acra.plugins.HasConfigPlugin;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lorg/acra/sender/EmailIntentSenderFactory;", "Lorg/acra/plugins/HasConfigPlugin;", "Lorg/acra/sender/ReportSenderFactory;", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "Lorg/acra/config/CoreConfiguration;", "config", "Lus8;", "create", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)Lus8;", "acra-mail_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class EmailIntentSenderFactory extends HasConfigPlugin implements ReportSenderFactory {
    public EmailIntentSenderFactory() {
        super(MailSenderConfiguration.class);
    }

    @Override
    public us8 create(Context context, CoreConfiguration config) {
        y45.j(context, "context");
        y45.j(config, "config");
        return new EmailIntentSender(config);
    }
}
