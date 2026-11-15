package org.acra.sender;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Parcelable;
import androidx.core.net.MailTo;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.livecaption.constant.ICode;
import com.transsion.sniffer_load.sniffservice.SniffTiktokUtil;
import defpackage.abb;
import defpackage.c;
import defpackage.c74;
import defpackage.cl;
import defpackage.i15;
import defpackage.i81;
import defpackage.ov4;
import defpackage.ue1;
import defpackage.ue3;
import defpackage.us8;
import defpackage.y45;
import defpackage.yz1;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.acra.attachment.AcraContentProvider;
import org.acra.config.CoreConfiguration;
import org.acra.config.MailSenderConfiguration;
import org.acra.data.CrashReportData;

public class EmailIntentSender implements us8 {
    public static final a c = new a(null);
    public final CoreConfiguration a;
    public final MailSenderConfiguration b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public EmailIntentSender(CoreConfiguration coreConfiguration) {
        y45.j(coreConfiguration, "config");
        this.a = coreConfiguration;
        this.b = (MailSenderConfiguration) ue1.b(coreConfiguration, MailSenderConfiguration.class);
    }

    @Override
    public boolean b() {
        return true;
    }

    @Override
    public void c(Context context, CrashReportData crashReportData) throws ReportSenderException, IllegalAccessException, InvocationTargetException {
        y45.j(context, "context");
        y45.j(crashReportData, "errorContent");
        String strI = i(context);
        try {
            Pair pairK = k(context, this.a.getReportFormat().toFormattedString(crashReportData, this.a.getReportContent(), "\n", "\n\t", false));
            o(strI, (String) pairK.component1(), (List) pairK.component2(), context);
        } catch (Exception e) {
            throw new ReportSenderException("Failed to convert Report to text", e);
        }
    }

    public Intent d(String str, String str2, List list) {
        y45.j(str, "subject");
        y45.j(list, "attachments");
        Intent intent = new Intent("android.intent.action.SEND_MULTIPLE");
        intent.putExtra("android.intent.extra.EMAIL", new String[]{this.b.getMailTo()});
        intent.addFlags(268435456);
        intent.putExtra("android.intent.extra.SUBJECT", str);
        intent.putParcelableArrayListExtra("android.intent.extra.STREAM", (ArrayList) i81.X0(list, new ArrayList()));
        intent.putExtra("android.intent.extra.TEXT", str2);
        return intent;
    }

    public Intent e(String str, String str2) {
        y45.j(str, "subject");
        y45.j(str2, TtmlNode.TAG_BODY);
        Intent intent = new Intent("android.intent.action.SENDTO");
        intent.setData(Uri.parse(MailTo.MAILTO_SCHEME + this.b.getMailTo() + "?subject=" + Uri.encode(str) + "&body=" + Uri.encode(str2)));
        intent.addFlags(268435456);
        intent.putExtra("android.intent.extra.SUBJECT", str);
        intent.putExtra("android.intent.extra.TEXT", str2);
        return intent;
    }

    public final List f(PackageManager packageManager, Intent intent, Intent intent2) {
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        y45.i(listQueryIntentActivities, "pm.queryIntentActivities…nager.MATCH_DEFAULT_ONLY)");
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : listQueryIntentActivities) {
            Intent intent3 = new Intent(intent2);
            intent3.setPackage(resolveInfo.activityInfo.packageName);
            if (intent3.resolveActivity(packageManager) != null) {
                arrayList.add(intent3);
            }
        }
        return arrayList;
    }

    public Intent g() {
        Intent intent = new Intent("android.intent.action.SENDTO");
        intent.setData(Uri.parse(MailTo.MAILTO_SCHEME));
        intent.addFlags(268435456);
        return intent;
    }

    public Intent h(String str, String str2, Uri uri) {
        y45.j(str, "subject");
        y45.j(uri, "attachment");
        Intent intent = new Intent("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.EMAIL", new String[]{this.b.getMailTo()});
        intent.addFlags(268435456);
        intent.putExtra("android.intent.extra.SUBJECT", str);
        intent.putExtra("android.intent.extra.STREAM", uri);
        intent.putExtra("android.intent.extra.TEXT", str2);
        return intent;
    }

    public String i(Context context) {
        y45.j(context, "context");
        String subject = this.b.getSubject();
        if (subject != null && subject.length() > 0) {
            return subject;
        }
        return context.getPackageName() + " Crash Report";
    }

    public Uri j(Context context, String str, String str2) {
        y45.j(context, "context");
        y45.j(str, "name");
        y45.j(str2, ICode.CALL.CALL_KEY_CONTENT);
        File file = new File(context.getCacheDir(), str);
        try {
            ov4.e(file, str2);
            return AcraContentProvider.INSTANCE.c(context, file);
        } catch (IOException unused) {
            return null;
        }
    }

    public Pair k(Context context, String str) {
        Uri uriJ;
        y45.j(context, "context");
        y45.j(str, "reportText");
        String body = this.b.getBody();
        if (this.b.getReportAsFile()) {
            if (body == null) {
                body = "";
            }
        } else if (body == null || body.length() <= 0) {
            body = str;
        } else {
            body = body + "\n" + str;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(((cl) i15.b(this.a.getAttachmentUriProvider(), new c74() {
            @Override
            public final cl invoke() {
                return new yz1();
            }
        })).a(context, this.a));
        if (this.b.getReportAsFile() && (uriJ = j(context, this.b.getReportFileName(), str)) != null) {
            arrayList.add(uriJ);
        }
        return abb.a(body, arrayList);
    }

    public final String l(ComponentName componentName, List list) {
        String packageName = componentName.getPackageName();
        if (!y45.e(packageName, ConstantDeviceInfo.APP_PLATFORM)) {
            return packageName;
        }
        if (list.size() > 1) {
            return null;
        }
        return list.size() == 1 ? ((Intent) list.get(0)).getPackage() : packageName;
    }

    public final void m(Context context, Intent intent, String str, List list) {
        if (str == null) {
            Iterator<ResolveInfo> it = context.getPackageManager().queryIntentActivities(intent, 65536).iterator();
            while (it.hasNext()) {
                m(context, intent, it.next().activityInfo.packageName, list);
            }
        } else {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                context.grantUriPermission(str, (Uri) it2.next(), 1);
            }
        }
    }

    public final void n(String str, String str2, List list, Context context) throws ReportSenderException {
        PackageManager packageManager = context.getPackageManager();
        Intent intentG = g();
        ComponentName componentNameResolveActivity = intentG.resolveActivity(packageManager);
        if (componentNameResolveActivity == null) {
            throw new ReportSenderException("No email client found");
        }
        if (list.isEmpty()) {
            context.startActivity(e(str, str2));
            return;
        }
        Intent intentD = d(str, str2, list);
        Intent intent = new Intent(intentD);
        intent.setType(SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE);
        y45.i(packageManager, "pm");
        List<Intent> listF = f(packageManager, intentG, intentD);
        String strL = l(componentNameResolveActivity, listF);
        intentD.setPackage(strL);
        intent.setPackage(strL);
        if (strL == null) {
            for (Intent intent2 : listF) {
                m(context, intent2, intent2.getPackage(), list);
            }
            p(context, i81.e1(listF));
            return;
        }
        if (intentD.resolveActivity(packageManager) != null) {
            m(context, intentD, strL, list);
            context.startActivity(intentD);
        } else if (intent.resolveActivity(packageManager) != null) {
            m(context, intent, strL, list);
            context.startActivity(intent);
        } else {
            c.d.w(c.c, "No email client supporting attachments found. Attachments will be ignored");
            context.startActivity(e(str, str2));
        }
    }

    public final void o(String str, String str2, List list, Context context) throws ReportSenderException, IllegalAccessException, InvocationTargetException {
        Intent intentH = list.size() == 1 ? h(str, str2, (Uri) i81.o0(list)) : d(str, str2, list);
        intentH.setSelector(g());
        m(context, intentH, null, list);
        try {
            context.startActivity(intentH);
        } catch (ActivityNotFoundException e) {
            try {
                n(str, str2, list, context);
            } catch (ActivityNotFoundException e2) {
                ReportSenderException reportSenderException = new ReportSenderException("No email client found", e2);
                ue3.a(reportSenderException, e);
                throw reportSenderException;
            }
        }
    }

    public final void p(Context context, List list) {
        Intent intent = new Intent("android.intent.action.CHOOSER");
        intent.putExtra("android.intent.extra.INTENT", (Parcelable) list.remove(0));
        intent.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) list.toArray(new Intent[0]));
        intent.addFlags(268435456);
        context.startActivity(intent);
    }
}
