package org.acra.config;

import androidx.media3.common.C;
import defpackage.cl;
import defpackage.d;
import defpackage.i81;
import defpackage.uu8;
import defpackage.y45;
import defpackage.y71;
import defpackage.yz1;
import defpackage.z32;
import java.io.Serializable;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.acra.ReportField;
import org.acra.data.StringFormat;
import org.acra.file.Directory;
import org.acra.plugins.PluginLoader;
import org.acra.plugins.ServicePluginLoader;

@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b2\u0018\u00002\u00020\u00012\u00020\u0002Bí\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u0007\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u000e\b\u0002\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u000e\b\u0002\u0010\u0017\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0019\u001a\u00020\t\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u001a\u0012\u0010\b\u0002\u0010\u001d\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001c0\u0016\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u0010\b\u0002\u0010!\u001a\n\u0012\u0006\b\u0001\u0012\u00020 0\u0016\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010%\u001a\u00020$\u0012\b\b\u0002\u0010&\u001a\u00020\u0005\u0012\b\b\u0002\u0010(\u001a\u00020'\u0012\u000e\b\u0002\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\u0005H\u0016¢\u0006\u0004\b,\u0010-R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010.\u001a\u0004\b/\u00100R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u00101\u001a\u0004\b2\u0010-R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078\u0006¢\u0006\f\n\u0004\b\b\u00103\u001a\u0004\b4\u00105R\u0017\u0010\n\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u00106\u001a\u0004\b7\u00108R\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078\u0006¢\u0006\f\n\u0004\b\u000b\u00103\u001a\u0004\b9\u00105R\u001d\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u00078\u0006¢\u0006\f\n\u0004\b\r\u00103\u001a\u0004\b:\u00105R\u0017\u0010\u000e\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u000e\u00101\u001a\u0004\b;\u0010-R\u0017\u0010\u000f\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u000f\u00101\u001a\u0004\b<\u0010-R\u001d\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078\u0006¢\u0006\f\n\u0004\b\u0010\u00103\u001a\u0004\b=\u00105R\u0017\u0010\u0011\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0011\u00101\u001a\u0004\b>\u0010-R\u0017\u0010\u0012\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0012\u00101\u001a\u0004\b?\u0010-R\u0017\u0010\u0013\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0013\u00101\u001a\u0004\b@\u0010-R\u001d\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078\u0006¢\u0006\f\n\u0004\b\u0014\u00103\u001a\u0004\bA\u00105R\u001d\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078\u0006¢\u0006\f\n\u0004\b\u0015\u00103\u001a\u0004\bB\u00105R\u001d\u0010\u0017\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010C\u001a\u0004\bD\u0010ER\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00038\u0006¢\u0006\f\n\u0004\b\u0018\u0010.\u001a\u0004\bF\u00100R\u0017\u0010\u0019\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\u0019\u00106\u001a\u0004\bG\u00108R\u0017\u0010\u001b\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010H\u001a\u0004\bI\u0010JR\u001f\u0010\u001d\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001c0\u00168\u0006¢\u0006\f\n\u0004\b\u001d\u0010C\u001a\u0004\bK\u0010ER\u0017\u0010\u001e\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u001e\u00101\u001a\u0004\bL\u0010-R\u001d\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078\u0006¢\u0006\f\n\u0004\b\u001f\u00103\u001a\u0004\bM\u00105R\u001f\u0010!\u001a\n\u0012\u0006\b\u0001\u0012\u00020 0\u00168\u0006¢\u0006\f\n\u0004\b!\u0010C\u001a\u0004\bN\u0010ER\u0019\u0010\"\u001a\u0004\u0018\u00010\u00038\u0006¢\u0006\f\n\u0004\b\"\u0010.\u001a\u0004\bO\u00100R\u0019\u0010#\u001a\u0004\u0018\u00010\u00038\u0006¢\u0006\f\n\u0004\b#\u0010.\u001a\u0004\bP\u00100R\u0017\u0010%\u001a\u00020$8\u0006¢\u0006\f\n\u0004\b%\u0010Q\u001a\u0004\bR\u0010SR\u0017\u0010&\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b&\u00101\u001a\u0004\bT\u0010-R\u0017\u0010(\u001a\u00020'8\u0006¢\u0006\f\n\u0004\b(\u0010U\u001a\u0004\bV\u0010WR\u001d\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00020\u00078\u0006¢\u0006\f\n\u0004\b)\u00103\u001a\u0004\bX\u00105¨\u0006Y"}, d2 = {"Lorg/acra/config/CoreConfiguration;", "Ljava/io/Serializable;", "Lorg/acra/config/Configuration;", "", "sharedPreferencesName", "", "includeDropBoxSystemTags", "", "additionalDropBoxTags", "", "dropboxCollectionMinutes", "logcatArguments", "Lorg/acra/ReportField;", "reportContent", "deleteUnapprovedReportsOnApplicationStart", "alsoReportToAndroidFramework", "additionalSharedPreferences", "logcatFilterByPid", "logcatReadNonBlocking", "sendReportsInDevMode", "excludeMatchingSharedPreferencesKeys", "excludeMatchingSettingsKeys", "Ljava/lang/Class;", "buildConfigClass", "applicationLogFile", "applicationLogFileLines", "Lorg/acra/file/Directory;", "applicationLogFileDir", "Luu8;", "retryPolicyClass", "stopServicesOnCrash", "attachmentUris", "Lcl;", "attachmentUriProvider", "reportSendSuccessToast", "reportSendFailureToast", "Lorg/acra/data/StringFormat;", "reportFormat", "parallel", "Lorg/acra/plugins/PluginLoader;", "pluginLoader", "pluginConfigurations", MethodDecl.initName, "(Ljava/lang/String;ZLjava/util/List;ILjava/util/List;Ljava/util/List;ZZLjava/util/List;ZZZLjava/util/List;Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;ILorg/acra/file/Directory;Ljava/lang/Class;ZLjava/util/List;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/acra/data/StringFormat;ZLorg/acra/plugins/PluginLoader;Ljava/util/List;)V", "enabled", "()Z", "Ljava/lang/String;", "getSharedPreferencesName", "()Ljava/lang/String;", "Z", "getIncludeDropBoxSystemTags", "Ljava/util/List;", "getAdditionalDropBoxTags", "()Ljava/util/List;", "I", "getDropboxCollectionMinutes", "()I", "getLogcatArguments", "getReportContent", "getDeleteUnapprovedReportsOnApplicationStart", "getAlsoReportToAndroidFramework", "getAdditionalSharedPreferences", "getLogcatFilterByPid", "getLogcatReadNonBlocking", "getSendReportsInDevMode", "getExcludeMatchingSharedPreferencesKeys", "getExcludeMatchingSettingsKeys", "Ljava/lang/Class;", "getBuildConfigClass", "()Ljava/lang/Class;", "getApplicationLogFile", "getApplicationLogFileLines", "Lorg/acra/file/Directory;", "getApplicationLogFileDir", "()Lorg/acra/file/Directory;", "getRetryPolicyClass", "getStopServicesOnCrash", "getAttachmentUris", "getAttachmentUriProvider", "getReportSendSuccessToast", "getReportSendFailureToast", "Lorg/acra/data/StringFormat;", "getReportFormat", "()Lorg/acra/data/StringFormat;", "getParallel", "Lorg/acra/plugins/PluginLoader;", "getPluginLoader", "()Lorg/acra/plugins/PluginLoader;", "getPluginConfigurations", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CoreConfiguration implements Serializable, Configuration {
    private final List<String> additionalDropBoxTags;
    private final List<String> additionalSharedPreferences;
    private final boolean alsoReportToAndroidFramework;
    private final String applicationLogFile;
    private final Directory applicationLogFileDir;
    private final int applicationLogFileLines;
    private final Class<? extends cl> attachmentUriProvider;
    private final List<String> attachmentUris;
    private final Class<?> buildConfigClass;
    private final boolean deleteUnapprovedReportsOnApplicationStart;
    private final int dropboxCollectionMinutes;
    private final List<String> excludeMatchingSettingsKeys;
    private final List<String> excludeMatchingSharedPreferencesKeys;
    private final boolean includeDropBoxSystemTags;
    private final List<String> logcatArguments;
    private final boolean logcatFilterByPid;
    private final boolean logcatReadNonBlocking;
    private final boolean parallel;
    private final List<Configuration> pluginConfigurations;
    private final PluginLoader pluginLoader;
    private final List<ReportField> reportContent;
    private final StringFormat reportFormat;
    private final String reportSendFailureToast;
    private final String reportSendSuccessToast;
    private final Class<? extends uu8> retryPolicyClass;
    private final boolean sendReportsInDevMode;
    private final String sharedPreferencesName;
    private final boolean stopServicesOnCrash;

    public CoreConfiguration() {
        this(null, false, null, 0, null, null, false, false, null, false, false, false, null, null, null, null, 0, null, null, false, null, null, null, null, null, false, null, null, 268435455, null);
    }

    @Override
    public boolean getEnabled() {
        return true;
    }

    public final List<String> getAdditionalDropBoxTags() {
        return this.additionalDropBoxTags;
    }

    public final List<String> getAdditionalSharedPreferences() {
        return this.additionalSharedPreferences;
    }

    public final boolean getAlsoReportToAndroidFramework() {
        return this.alsoReportToAndroidFramework;
    }

    public final String getApplicationLogFile() {
        return this.applicationLogFile;
    }

    public final Directory getApplicationLogFileDir() {
        return this.applicationLogFileDir;
    }

    public final int getApplicationLogFileLines() {
        return this.applicationLogFileLines;
    }

    public final Class<? extends cl> getAttachmentUriProvider() {
        return this.attachmentUriProvider;
    }

    public final List<String> getAttachmentUris() {
        return this.attachmentUris;
    }

    public final Class<?> getBuildConfigClass() {
        return this.buildConfigClass;
    }

    public final boolean getDeleteUnapprovedReportsOnApplicationStart() {
        return this.deleteUnapprovedReportsOnApplicationStart;
    }

    public final int getDropboxCollectionMinutes() {
        return this.dropboxCollectionMinutes;
    }

    public final List<String> getExcludeMatchingSettingsKeys() {
        return this.excludeMatchingSettingsKeys;
    }

    public final List<String> getExcludeMatchingSharedPreferencesKeys() {
        return this.excludeMatchingSharedPreferencesKeys;
    }

    public final boolean getIncludeDropBoxSystemTags() {
        return this.includeDropBoxSystemTags;
    }

    public final List<String> getLogcatArguments() {
        return this.logcatArguments;
    }

    public final boolean getLogcatFilterByPid() {
        return this.logcatFilterByPid;
    }

    public final boolean getLogcatReadNonBlocking() {
        return this.logcatReadNonBlocking;
    }

    public final boolean getParallel() {
        return this.parallel;
    }

    public final List<Configuration> getPluginConfigurations() {
        return this.pluginConfigurations;
    }

    public final PluginLoader getPluginLoader() {
        return this.pluginLoader;
    }

    public final List<ReportField> getReportContent() {
        return this.reportContent;
    }

    public final StringFormat getReportFormat() {
        return this.reportFormat;
    }

    public final String getReportSendFailureToast() {
        return this.reportSendFailureToast;
    }

    public final String getReportSendSuccessToast() {
        return this.reportSendSuccessToast;
    }

    public final Class<? extends uu8> getRetryPolicyClass() {
        return this.retryPolicyClass;
    }

    public final boolean getSendReportsInDevMode() {
        return this.sendReportsInDevMode;
    }

    public final String getSharedPreferencesName() {
        return this.sharedPreferencesName;
    }

    public final boolean getStopServicesOnCrash() {
        return this.stopServicesOnCrash;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CoreConfiguration(String str, boolean z, List<String> list, int i, List<String> list2, List<? extends ReportField> list3, boolean z2, boolean z3, List<String> list4, boolean z4, boolean z5, boolean z6, List<String> list5, List<String> list6, Class<?> cls, String str2, int i2, Directory directory, Class<? extends uu8> cls2, boolean z7, List<String> list7, Class<? extends cl> cls3, String str3, String str4, StringFormat stringFormat, boolean z8, PluginLoader pluginLoader, List<? extends Configuration> list8) {
        y45.j(list, "additionalDropBoxTags");
        y45.j(list2, "logcatArguments");
        y45.j(list3, "reportContent");
        y45.j(list4, "additionalSharedPreferences");
        y45.j(list5, "excludeMatchingSharedPreferencesKeys");
        y45.j(list6, "excludeMatchingSettingsKeys");
        y45.j(directory, "applicationLogFileDir");
        y45.j(cls2, "retryPolicyClass");
        y45.j(list7, "attachmentUris");
        y45.j(cls3, "attachmentUriProvider");
        y45.j(stringFormat, "reportFormat");
        y45.j(pluginLoader, "pluginLoader");
        y45.j(list8, "pluginConfigurations");
        this.sharedPreferencesName = str;
        this.includeDropBoxSystemTags = z;
        this.additionalDropBoxTags = list;
        this.dropboxCollectionMinutes = i;
        this.logcatArguments = list2;
        this.reportContent = list3;
        this.deleteUnapprovedReportsOnApplicationStart = z2;
        this.alsoReportToAndroidFramework = z3;
        this.additionalSharedPreferences = list4;
        this.logcatFilterByPid = z4;
        this.logcatReadNonBlocking = z5;
        this.sendReportsInDevMode = z6;
        this.excludeMatchingSharedPreferencesKeys = list5;
        this.excludeMatchingSettingsKeys = list6;
        this.buildConfigClass = cls;
        this.applicationLogFile = str2;
        this.applicationLogFileLines = i2;
        this.applicationLogFileDir = directory;
        this.retryPolicyClass = cls2;
        this.stopServicesOnCrash = z7;
        this.attachmentUris = list7;
        this.attachmentUriProvider = cls3;
        this.reportSendSuccessToast = str3;
        this.reportSendFailureToast = str4;
        this.reportFormat = stringFormat;
        this.parallel = z8;
        this.pluginLoader = pluginLoader;
        this.pluginConfigurations = list8;
    }

    public CoreConfiguration(String str, boolean z, List list, int i, List list2, List list3, boolean z2, boolean z3, List list4, boolean z4, boolean z5, boolean z6, List list5, List list6, Class cls, String str2, int i2, Directory directory, Class cls2, boolean z7, List list7, Class cls3, String str3, String str4, StringFormat stringFormat, boolean z8, PluginLoader pluginLoader, List list8, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? null : str, (i3 & 2) != 0 ? false : z, (i3 & 4) != 0 ? y71.k() : list, (i3 & 8) != 0 ? 5 : i, (i3 & 16) != 0 ? y71.n("-t", "100", "-v", "time") : list2, (i3 & 32) != 0 ? i81.b1(d.c) : list3, (i3 & 64) != 0 ? true : z2, (i3 & 128) != 0 ? false : z3, (i3 & 256) != 0 ? y71.k() : list4, (i3 & 512) != 0 ? true : z4, (i3 & 1024) != 0 ? false : z5, (i3 & 2048) != 0 ? true : z6, (i3 & 4096) != 0 ? y71.k() : list5, (i3 & 8192) != 0 ? y71.k() : list6, (i3 & 16384) != 0 ? null : cls, (i3 & 32768) != 0 ? null : str2, (i3 & 65536) != 0 ? 100 : i2, (i3 & 131072) != 0 ? Directory.FILES_LEGACY : directory, (i3 & 262144) != 0 ? z32.class : cls2, (i3 & 524288) != 0 ? false : z7, (i3 & 1048576) != 0 ? y71.k() : list7, (i3 & 2097152) != 0 ? yz1.class : cls3, (i3 & 4194304) != 0 ? null : str3, (i3 & 8388608) != 0 ? null : str4, (i3 & 16777216) != 0 ? StringFormat.JSON : stringFormat, (i3 & 33554432) != 0 ? true : z8, (i3 & 67108864) != 0 ? new ServicePluginLoader() : pluginLoader, (i3 & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? y71.k() : list8);
    }
}
