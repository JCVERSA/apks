package org.acra.collector;

import android.content.Context;
import android.os.Build;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.g15;
import defpackage.ts8;
import defpackage.y45;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import java.util.UUID;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.acra.ReportField;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0017\u0018\u0000 \u00172\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0012¢\u0006\u0004\b\u0007\u0010\bJ7\u0010\u0012\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J/\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lorg/acra/collector/SimpleValuesCollector;", "Lorg/acra/collector/BaseReportFieldCollector;", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "", "getApplicationFilePath", "(Landroid/content/Context;)Ljava/lang/String;", "Lorg/acra/ReportField;", "reportField", "Lorg/acra/config/CoreConfiguration;", "config", "Lts8;", "reportBuilder", "Lorg/acra/data/CrashReportData;", TypedValues.AttributesType.S_TARGET, "Lzfb;", "collect", "(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V", "", "shouldCollect", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/ReportField;Lts8;)Z", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class SimpleValuesCollector extends BaseReportFieldCollector {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String b() throws SocketException {
            StringBuilder sb = new StringBuilder();
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            boolean z = true;
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    if (!inetAddressNextElement.isLoopbackAddress()) {
                        if (!z) {
                            sb.append('\n');
                        }
                        sb.append(inetAddressNextElement.getHostAddress());
                        z = false;
                    }
                }
            }
            String string = sb.toString();
            y45.i(string, "result.toString()");
            return string;
        }

        public Companion() {
        }
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[ReportField.values().length];
            try {
                iArr[ReportField.IS_SILENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReportField.REPORT_ID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReportField.INSTALLATION_ID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ReportField.PACKAGE_NAME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ReportField.PHONE_MODEL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ReportField.ANDROID_VERSION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ReportField.BRAND.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ReportField.PRODUCT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ReportField.FILE_PATH.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ReportField.USER_IP.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            a = iArr;
        }
    }

    public SimpleValuesCollector() {
        super(ReportField.IS_SILENT, ReportField.REPORT_ID, ReportField.INSTALLATION_ID, ReportField.PACKAGE_NAME, ReportField.PHONE_MODEL, ReportField.ANDROID_VERSION, ReportField.BRAND, ReportField.PRODUCT, ReportField.FILE_PATH, ReportField.USER_IP);
    }

    private String getApplicationFilePath(Context context) {
        String absolutePath = context.getFilesDir().getAbsolutePath();
        y45.i(absolutePath, "context.filesDir.absolutePath");
        return absolutePath;
    }

    @Override
    public void collect(ReportField reportField, Context context, CoreConfiguration config, ts8 reportBuilder, CrashReportData target) throws Exception {
        y45.j(reportField, "reportField");
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(reportBuilder, "reportBuilder");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        switch (b.a[reportField.ordinal()]) {
            case 1:
                ReportField reportField2 = ReportField.REPORT_ID;
                throw null;
            case 2:
                target.h(ReportField.REPORT_ID, UUID.randomUUID().toString());
                return;
            case 3:
                target.h(ReportField.INSTALLATION_ID, g15.a(context));
                return;
            case 4:
                target.h(ReportField.PACKAGE_NAME, context.getPackageName());
                return;
            case 5:
                target.h(ReportField.PHONE_MODEL, Build.MODEL);
                return;
            case 6:
                target.h(ReportField.ANDROID_VERSION, Build.VERSION.RELEASE);
                return;
            case 7:
                target.h(ReportField.BRAND, Build.BRAND);
                return;
            case 8:
                target.h(ReportField.PRODUCT, Build.PRODUCT);
                return;
            case 9:
                target.h(ReportField.FILE_PATH, getApplicationFilePath(context));
                return;
            case 10:
                target.h(ReportField.USER_IP, INSTANCE.b());
                return;
            default:
                throw new IllegalArgumentException();
        }
    }

    @Override
    public boolean enabled(CoreConfiguration coreConfiguration) {
        return super.enabled(coreConfiguration);
    }

    @Override
    public boolean shouldCollect(Context context, CoreConfiguration config, ReportField collect, ts8 reportBuilder) {
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(collect, "collect");
        y45.j(reportBuilder, "reportBuilder");
        return collect == ReportField.IS_SILENT || collect == ReportField.REPORT_ID || super.shouldCollect(context, config, collect, reportBuilder);
    }
}
