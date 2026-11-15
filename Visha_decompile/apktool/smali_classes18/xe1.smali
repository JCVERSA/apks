.class public Lxe1;
.super Lfreemarker/core/Configurable;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxe1$a;,
        Lxe1$b;
    }
.end annotation


# static fields
.field public static final b0:Lpq5;

.field public static final c0:[Ljava/lang/String;

.field public static final d0:[Ljava/lang/String;

.field public static final e0:Lfreemarker/template/Version;

.field public static final f0:Lfreemarker/template/Version;

.field public static final g0:Lfreemarker/template/Version;

.field public static final h0:Lfreemarker/template/Version;

.field public static final i0:Lfreemarker/template/Version;

.field public static final j0:Lfreemarker/template/Version;

.field public static final k0:Lfreemarker/template/Version;

.field public static final l0:Ljava/lang/String;

.field public static final m0:I

.field public static final n0:Lfreemarker/template/Version;

.field public static final o0:Z

.field public static final p0:Ljava/lang/Object;

.field public static q0:Lxe1;

.field public static synthetic r0:Ljava/lang/Class;


# instance fields
.field public J:Z

.field public volatile K:Z

.field public L:Z

.field public M:Lfreemarker/template/Version;

.field public N:I

.field public O:I

.field public P:Lfreemarker/cache/TemplateCache;

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:Ljava/util/HashMap;

.field public V:Ljava/util/HashMap;

.field public W:Ljava/lang/String;

.field public X:Ljava/util/Map;

.field public Y:Ljava/util/ArrayList;

.field public Z:Ljava/util/ArrayList;

.field public a0:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "freemarker.cache"

    invoke-static {v0}, Lpq5;->k(Ljava/lang/String;)Lpq5;

    move-result-object v0

    sput-object v0, Lxe1;->b0:Lpq5;

    const-string v13, "template_update_delay"

    const-string v14, "whitespace_stripping"

    const-string v1, "auto_import"

    const-string v2, "auto_include"

    const-string v3, "cache_storage"

    const-string v4, "default_encoding"

    const-string v5, "incompatible_improvements"

    const-string v6, "localized_lookup"

    const-string v7, "naming_convention"

    const-string v8, "strict_syntax"

    const-string v9, "tag_syntax"

    const-string v10, "template_loader"

    const-string v11, "template_lookup_strategy"

    const-string v12, "template_name_format"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxe1;->c0:[Ljava/lang/String;

    const-string v13, "templateUpdateDelay"

    const-string v14, "whitespaceStripping"

    const-string v1, "autoImport"

    const-string v2, "autoInclude"

    const-string v3, "cacheStorage"

    const-string v4, "defaultEncoding"

    const-string v5, "incompatibleImprovements"

    const-string v6, "localizedLookup"

    const-string v7, "namingConvention"

    const-string v8, "strictSyntax"

    const-string v9, "tagSyntax"

    const-string v10, "templateLoader"

    const-string v11, "templateLookupStrategy"

    const-string v12, "templateNameFormat"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxe1;->d0:[Ljava/lang/String;

    new-instance v0, Lfreemarker/template/Version;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lfreemarker/template/Version;-><init>(III)V

    sput-object v0, Lxe1;->e0:Lfreemarker/template/Version;

    new-instance v4, Lfreemarker/template/Version;

    const/16 v5, 0x13

    invoke-direct {v4, v1, v2, v5}, Lfreemarker/template/Version;-><init>(III)V

    sput-object v4, Lxe1;->f0:Lfreemarker/template/Version;

    new-instance v4, Lfreemarker/template/Version;

    const/16 v5, 0x14

    invoke-direct {v4, v1, v2, v5}, Lfreemarker/template/Version;-><init>(III)V

    sput-object v4, Lxe1;->g0:Lfreemarker/template/Version;

    new-instance v4, Lfreemarker/template/Version;

    const/16 v5, 0x15

    invoke-direct {v4, v1, v2, v5}, Lfreemarker/template/Version;-><init>(III)V

    sput-object v4, Lxe1;->h0:Lfreemarker/template/Version;

    new-instance v4, Lfreemarker/template/Version;

    const/16 v5, 0x16

    invoke-direct {v4, v1, v2, v5}, Lfreemarker/template/Version;-><init>(III)V

    sput-object v4, Lxe1;->i0:Lfreemarker/template/Version;

    new-instance v4, Lfreemarker/template/Version;

    const/16 v5, 0x17

    invoke-direct {v4, v1, v2, v5}, Lfreemarker/template/Version;-><init>(III)V

    sput-object v4, Lxe1;->j0:Lfreemarker/template/Version;

    sput-object v0, Lxe1;->k0:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lxe1;->l0:Ljava/lang/String;

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sput v0, Lxe1;->m0:I

    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sget-object v1, Lxe1;->r0:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "freemarker.template.Configuration"

    invoke-static {v1}, Lxe1;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lxe1;->r0:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "freemarker/version.properties"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const-string v1, "version"

    invoke-static {v0, v1}, Lxe1;->H0(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "buildTimestamp"

    invoke-static {v0, v2}, Lxe1;->H0(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Z"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "+0000"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :try_start_3
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_1
    const/4 v2, 0x0

    :goto_1
    :try_start_4
    const-string v4, "isGAECompliant"

    invoke-static {v0, v4}, Lxe1;->H0(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v4, Lfreemarker/template/Version;

    invoke-direct {v4, v1, v0, v2}, Lfreemarker/template/Version;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;)V

    sput-object v4, Lxe1;->n0:Lfreemarker/template/Version;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    const-string v0, "freemarker.core._2_4_OrLaterMarker"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    move v3, v5

    :catch_3
    :catchall_0
    sput-boolean v3, Lxe1;->o0:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lxe1;->p0:Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Version file is missing."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to load and parse freemarker/version.properties"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lxe1;->k0:Lfreemarker/template/Version;

    invoke-direct {p0, v0}, Lxe1;-><init>(Lfreemarker/template/Version;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Version;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/core/Configurable;-><init>(Lfreemarker/template/Version;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lxe1;->J:Z

    .line 4
    iput-boolean v0, p0, Lxe1;->K:Z

    .line 5
    iput-boolean v0, p0, Lxe1;->L:Z

    .line 6
    iput v0, p0, Lxe1;->N:I

    const/16 v0, 0xa

    .line 7
    iput v0, p0, Lxe1;->O:I

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lxe1;->U:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lxe1;->V:Ljava/util/HashMap;

    .line 10
    const-string v0, "file.encoding"

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lha9;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxe1;->W:Ljava/lang/String;

    .line 11
    invoke-static {}, Lc0d;->e()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lxe1;->X:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxe1;->Y:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxe1;->Z:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lxe1;->a0:Ljava/util/Map;

    .line 14
    invoke-static {}, Lxe1;->m0()V

    .line 15
    const-string v0, "incompatibleImprovements"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    iput-object p1, p0, Lxe1;->M:Lfreemarker/template/Version;

    .line 17
    invoke-virtual {p0}, Lxe1;->p0()V

    .line 18
    invoke-virtual {p0}, Lxe1;->W0()V

    return-void
.end method

.method public static B0(Lfreemarker/template/Version;)Lwfa;
    .locals 0

    sget-object p0, Lwfa;->a:Lwfa;

    return-object p0
.end method

.method public static D0(Lfreemarker/template/Version;)Lfga;
    .locals 0

    sget-object p0, Lfga;->a:Lfga;

    return-object p0
.end method

.method public static H0(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Version file is corrupt: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\" property is missing."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static S0()Lfreemarker/template/Version;
    .locals 1

    sget-object v0, Lxe1;->n0:Lfreemarker/template/Version;

    return-object v0
.end method

.method public static T0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lxe1;->n0:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static m0()V
    .locals 3

    sget-boolean v0, Lxe1;->o0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Clashing FreeMarker versions ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lxe1;->n0:Lfreemarker/template/Version;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, " and some post-2.3.x) detected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "found post-2.3.x class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "freemarker.core._2_4_OrLaterMarker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ". You probably have two different "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "freemarker.jar-s in the classpath."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static n0(Lfreemarker/template/Version;Lzp0;)Lzp0;
    .locals 0

    instance-of p0, p1, Lxe1$a;

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Lxe1$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lxe1$a;-><init>(Lwe1;)V

    return-object p0
.end method

.method public static o0(Lfreemarker/template/Version;Lqfa;)Lqfa;
    .locals 2

    invoke-virtual {p0}, Lfreemarker/template/Version;->intValue()I

    move-result p0

    sget v0, Ld1d;->d:I

    const/4 v1, 0x0

    if-ge p0, v0, :cond_1

    instance-of p0, p1, Lxe1$b;

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    new-instance p0, Lxe1$b;

    invoke-direct {p0}, Lxe1$b;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lxe1;->b0:Lpq5;

    const-string v0, "Couldn\'t create legacy default TemplateLoader which accesses the current directory. (Use new Configuration(Configuration.VERSION_2_3_21) or higher to avoid this.)"

    invoke-virtual {p1, v0, p0}, Lpq5;->A(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v1
.end method

.method public static t0()Lxe1;
    .locals 2

    sget-object v0, Lxe1;->p0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lxe1;->q0:Lxe1;

    if-nez v1, :cond_0

    new-instance v1, Lxe1;

    invoke-direct {v1}, Lxe1;-><init>()V

    sput-object v1, Lxe1;->q0:Lxe1;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lxe1;->q0:Lxe1;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static final u0(Lfreemarker/template/Version;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static w0(Lfreemarker/template/Version;)Lgc7;
    .locals 2

    invoke-virtual {p0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sget v1, Ld1d;->d:I

    if-ge v0, v1, :cond_0

    sget-object p0, Lgc7;->b:Lgc7;

    return-object p0

    :cond_0
    new-instance v0, La32;

    invoke-direct {v0, p0}, La32;-><init>(Lfreemarker/template/Version;)V

    invoke-virtual {v0}, La32;->m()Lz22;

    move-result-object p0

    return-object p0
.end method

.method public static final y0(Lfreemarker/template/Version;)Lnfa;
    .locals 0

    sget-object p0, Lnfa;->c:Lnfa;

    return-object p0
.end method


# virtual methods
.method public final A0()Lwfa;
    .locals 0

    invoke-virtual {p0}, Lxe1;->F0()Lfreemarker/template/Version;

    move-result-object p0

    invoke-static {p0}, Lxe1;->B0(Lfreemarker/template/Version;)Lwfa;

    move-result-object p0

    return-object p0
.end method

.method public final C0()Lfga;
    .locals 0

    invoke-virtual {p0}, Lxe1;->F0()Lfreemarker/template/Version;

    move-result-object p0

    invoke-static {p0}, Lxe1;->D0(Lfreemarker/template/Version;)Lfga;

    move-result-object p0

    return-object p0
.end method

.method public E0(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lxe1;->X:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lxe1;->W:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lxe1;->X:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lxe1;->X:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lxe1;->X:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lxe1;->X:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lxe1;->X:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lxe1;->W:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public F0()Lfreemarker/template/Version;
    .locals 0

    iget-object p0, p0, Lxe1;->M:Lfreemarker/template/Version;

    return-object p0
.end method

.method public G0()I
    .locals 0

    iget p0, p0, Lxe1;->O:I

    return p0
.end method

.method public I0(Ljava/lang/String;)Lzfa;
    .locals 0

    iget-object p0, p0, Lxe1;->U:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzfa;

    return-object p0
.end method

.method public J0()Ljava/util/Set;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lxe1;->U:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public K0()Z
    .locals 0

    iget-boolean p0, p0, Lxe1;->J:Z

    return p0
.end method

.method public L0()I
    .locals 0

    iget p0, p0, Lxe1;->N:I

    return p0
.end method

.method public M0(Ljava/lang/String;)Lfreemarker/template/Template;
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lxe1;->O0(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/Template;

    move-result-object p0

    return-object p0
.end method

.method public N0(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/template/Template;
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lxe1;->O0(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/Template;

    move-result-object p0

    return-object p0
.end method

.method public O0(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/Template;
    .locals 6

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->p()Ljava/util/Locale;

    move-result-object p2

    :cond_0
    move-object v2, p2

    if-nez p4, :cond_1

    invoke-virtual {p0, v2}, Lxe1;->E0(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p4

    :cond_1
    move-object v4, p4

    iget-object v0, p0, Lxe1;->P:Lfreemarker/cache/TemplateCache;

    move-object v1, p1

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lfreemarker/cache/TemplateCache;->k(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Lfreemarker/cache/TemplateCache$a;

    move-result-object p2

    invoke-virtual {p2}, Lfreemarker/cache/TemplateCache$a;->c()Lfreemarker/template/Template;

    move-result-object p4

    if-nez p4, :cond_b

    if-eqz p6, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lxe1;->P0()Lqfa;

    move-result-object p4

    if-nez p4, :cond_3

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Don\'t know where to load template "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ln0a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p4, " from because the \"template_loader\" FreeMarker "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p4, "setting wasn\'t set (Configuration.setTemplateLoader), so it\'s null."

    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p2}, Lfreemarker/cache/TemplateCache$a;->a()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2}, Lfreemarker/cache/TemplateCache$a;->b()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0}, Lxe1;->Q0()Lwfa;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Template not found for name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ln0a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ""

    if-eqz p5, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lxe1;->Y0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, " (normalized: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p5}, Ln0a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v3, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p5, ")"

    invoke-virtual {v3, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_4
    move-object p5, v2

    :goto_0
    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_5

    new-instance p5, Ljava/lang/StringBuffer;

    invoke-direct {p5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " and custom lookup condition "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p3}, Ln0a;->C(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_1

    :cond_5
    move-object p5, v2

    :goto_1
    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p5, "."

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p6, :cond_6

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\nReason given: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p6}, Lxe1;->q0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    move-object v3, v2

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\nThe name was interpreted by this TemplateLoader: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p4}, Ln0a;->a0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Lxe1;->V0(Lwfa;)Z

    move-result p4

    if-nez p4, :cond_7

    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    const-string p5, "\n(Before that, the name was possibly changed by this lookup strategy: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ln0a;->a0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p5, ".)"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    :cond_7
    move-object p4, v2

    :goto_3
    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean p0, p0, Lxe1;->Q:Z

    if-nez p0, :cond_8

    const-string p0, "\nWarning: The \"template_loader\" FreeMarker setting wasn\'t set (Configuration.setTemplateLoader), and using the default value is most certainly not intended and dangerous, and can be the cause of this error."

    goto :goto_4

    :cond_8
    move-object p0, v2

    :goto_4
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p6, :cond_9

    const/16 p0, 0x5c

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 p4, -0x1

    if-eq p0, p4, :cond_9

    const-string v2, "\nWarning: The name contains backslash (\"\\\") instead of slash (\"/\"); template names should use slash only."

    :cond_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-virtual {p2}, Lfreemarker/cache/TemplateCache$a;->a()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Lfreemarker/template/TemplateNotFoundException;

    if-eqz p2, :cond_a

    move-object p1, p2

    :cond_a
    invoke-direct {p4, p1, p3, p0}, Lfreemarker/template/TemplateNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw p4

    :cond_b
    return-object p4
.end method

.method public P0()Lqfa;
    .locals 0

    iget-object p0, p0, Lxe1;->P:Lfreemarker/cache/TemplateCache;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lfreemarker/cache/TemplateCache;->m()Lqfa;

    move-result-object p0

    return-object p0
.end method

.method public Q0()Lwfa;
    .locals 0

    iget-object p0, p0, Lxe1;->P:Lfreemarker/cache/TemplateCache;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lfreemarker/cache/TemplateCache;->n()Lwfa;

    move-result-object p0

    return-object p0
.end method

.method public R0()Lfga;
    .locals 0

    iget-object p0, p0, Lxe1;->P:Lfreemarker/cache/TemplateCache;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lfreemarker/cache/TemplateCache;->o()Lfga;

    move-result-object p0

    return-object p0
.end method

.method public U0()Z
    .locals 0

    iget-boolean p0, p0, Lxe1;->L:Z

    return p0
.end method

.method public final V0(Lwfa;)Z
    .locals 0

    sget-object p0, Lwfa;->a:Lwfa;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public W(Z)V
    .locals 0

    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->W(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lxe1;->T:Z

    return-void
.end method

.method public final W0()V
    .locals 3

    iget-object v0, p0, Lxe1;->U:Ljava/util/HashMap;

    new-instance v1, Lmr0;

    invoke-direct {v1}, Lmr0;-><init>()V

    const-string v2, "capture_output"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lxe1;->U:Ljava/util/HashMap;

    const-string v1, "compress"

    sget-object v2, Lew9;->c:Lew9;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lxe1;->U:Ljava/util/HashMap;

    new-instance v1, Lbs4;

    invoke-direct {v1}, Lbs4;-><init>()V

    const-string v2, "html_escape"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lxe1;->U:Ljava/util/HashMap;

    new-instance v1, Lu17;

    invoke-direct {v1}, Lu17;-><init>()V

    const-string v2, "normalize_newlines"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lxe1;->U:Ljava/util/HashMap;

    new-instance v0, Lxrc;

    invoke-direct {v0}, Lxrc;-><init>()V

    const-string v1, "xml_escape"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final X0(Lqfa;Lzp0;Lwfa;Lfga;)V
    .locals 8

    iget-object v0, p0, Lxe1;->P:Lfreemarker/cache/TemplateCache;

    new-instance v7, Lfreemarker/cache/TemplateCache;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lfreemarker/cache/TemplateCache;-><init>(Lqfa;Lzp0;Lwfa;Lfga;Lxe1;)V

    iput-object v7, p0, Lxe1;->P:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v7}, Lfreemarker/cache/TemplateCache;->e()V

    iget-object p1, p0, Lxe1;->P:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->i()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lfreemarker/cache/TemplateCache;->t(J)V

    iget-object p1, p0, Lxe1;->P:Lfreemarker/cache/TemplateCache;

    iget-boolean p0, p0, Lxe1;->K:Z

    invoke-virtual {p1, p0}, Lfreemarker/cache/TemplateCache;->u(Z)V

    return-void
.end method

.method public final Y0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public Z(Lgc7;)V
    .locals 2

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->u()Lgc7;

    move-result-object v0

    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->Z(Lgc7;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lxe1;->R:Z

    if-eq p1, v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lxe1;->b1()V
    :try_end_0
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to re-wrap earliearly set shared variables with the newly set object wrapper"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public Z0(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lex0;

    invoke-direct {v0, p1, p2}, Lex0;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lxe1;->c1(Lqfa;)V

    return-void
.end method

.method public a1(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p0}, Lxe1;->P0()Lqfa;

    move-result-object v0

    instance-of v1, v0, Lxr3;

    if-eqz v1, :cond_0

    check-cast v0, Lxr3;

    iget-object v0, v0, Lxr3;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lxr3;

    invoke-direct {v0, p1}, Lxr3;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lxe1;->c1(Lqfa;)V

    return-void
.end method

.method public final b1()V
    .locals 4

    iget-object v0, p0, Lxe1;->V:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lzfa;

    if-eqz v3, :cond_1

    check-cast v1, Lzfa;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/Configurable;->u()Lgc7;

    move-result-object v3

    invoke-interface {v3, v1}, Lgc7;->c(Ljava/lang/Object;)Lzfa;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lxe1;->U:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c1(Lqfa;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lxe1;->P:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->m()Lqfa;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lxe1;->P:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->h()Lzp0;

    move-result-object v0

    iget-object v1, p0, Lxe1;->P:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v1}, Lfreemarker/cache/TemplateCache;->n()Lwfa;

    move-result-object v1

    iget-object v2, p0, Lxe1;->P:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v2}, Lfreemarker/cache/TemplateCache;->o()Lfga;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lxe1;->X0(Lqfa;Lzp0;Lwfa;Lfga;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lxe1;->Q:Z

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-super {p0}, Lfreemarker/core/Configurable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxe1;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lxe1;->U:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lxe1;->U:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lxe1;->X:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lxe1;->X:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lxe1;->a0:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lxe1;->a0:Ljava/util/Map;

    iget-object v1, p0, Lxe1;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lxe1;->Y:Ljava/util/ArrayList;

    iget-object v1, p0, Lxe1;->Z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lxe1;->Z:Ljava/util/ArrayList;

    iget-object v1, p0, Lxe1;->P:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v1}, Lfreemarker/cache/TemplateCache;->m()Lqfa;

    move-result-object v1

    iget-object v2, p0, Lxe1;->P:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v2}, Lfreemarker/cache/TemplateCache;->h()Lzp0;

    move-result-object v2

    iget-object v3, p0, Lxe1;->P:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v3}, Lfreemarker/cache/TemplateCache;->n()Lwfa;

    move-result-object v3

    iget-object p0, p0, Lxe1;->P:Lfreemarker/cache/TemplateCache;

    invoke-virtual {p0}, Lfreemarker/cache/TemplateCache;->o()Lfga;

    move-result-object p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lxe1;->X0(Lqfa;Lzp0;Lwfa;Lfga;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lfreemarker/core/BugException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Lfreemarker/core/Environment;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lxe1;->Y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lxe1;->Y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lxe1;->a0:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Lfreemarker/core/Environment;->p1(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/Environment$Namespace;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lxe1;->Z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lxe1;->Z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lfreemarker/core/Configurable;->p()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lxe1;->N0(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/template/Template;

    move-result-object v1

    invoke-virtual {p1, v1}, Lfreemarker/core/Environment;->r1(Lfreemarker/template/Template;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public d1()V
    .locals 1

    iget-boolean v0, p0, Lxe1;->R:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lxe1;->v0()Lgc7;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxe1;->Z(Lgc7;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxe1;->R:Z

    :cond_0
    return-void
.end method

.method public e1()V
    .locals 1

    iget-boolean v0, p0, Lxe1;->S:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lxe1;->x0()Lnfa;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxe1;->g0(Lnfa;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxe1;->S:Z

    :cond_0
    return-void
.end method

.method public g0(Lnfa;)V
    .locals 0

    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->g0(Lnfa;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lxe1;->S:Z

    return-void
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "charset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "default_charset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "defaultCharset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "defaultEncoding"

    return-object p0

    :cond_1
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "default_encoding"

    return-object p0
.end method

.method public final p0()V
    .locals 7

    new-instance v6, Lfreemarker/cache/TemplateCache;

    invoke-virtual {p0}, Lxe1;->z0()Lqfa;

    move-result-object v1

    invoke-virtual {p0}, Lxe1;->s0()Lzp0;

    move-result-object v2

    invoke-virtual {p0}, Lxe1;->A0()Lwfa;

    move-result-object v3

    invoke-virtual {p0}, Lxe1;->C0()Lfga;

    move-result-object v4

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lfreemarker/cache/TemplateCache;-><init>(Lqfa;Lzp0;Lwfa;Lfga;Lxe1;)V

    iput-object v6, p0, Lxe1;->P:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v6}, Lfreemarker/cache/TemplateCache;->e()V

    iget-object p0, p0, Lxe1;->P:Lfreemarker/cache/TemplateCache;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lfreemarker/cache/TemplateCache;->t(J)V

    return-void
.end method

.method public final q0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x21

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3f

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public r0()Lzp0;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lxe1;->P:Lfreemarker/cache/TemplateCache;

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->h()Lzp0;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final s0()Lzp0;
    .locals 1

    invoke-virtual {p0}, Lxe1;->F0()Lfreemarker/template/Version;

    move-result-object v0

    invoke-virtual {p0}, Lxe1;->r0()Lzp0;

    move-result-object p0

    invoke-static {v0, p0}, Lxe1;->n0(Lfreemarker/template/Version;Lzp0;)Lzp0;

    move-result-object p0

    return-object p0
.end method

.method public final v0()Lgc7;
    .locals 0

    invoke-virtual {p0}, Lxe1;->F0()Lfreemarker/template/Version;

    move-result-object p0

    invoke-static {p0}, Lxe1;->w0(Lfreemarker/template/Version;)Lgc7;

    move-result-object p0

    return-object p0
.end method

.method public final x0()Lnfa;
    .locals 0

    invoke-virtual {p0}, Lxe1;->F0()Lfreemarker/template/Version;

    move-result-object p0

    invoke-static {p0}, Lxe1;->y0(Lfreemarker/template/Version;)Lnfa;

    move-result-object p0

    return-object p0
.end method

.method public z(Z)Ljava/util/Set;
    .locals 2

    new-instance v0, Lg1d;

    invoke-static {p0, p1}, Lfreemarker/core/x1;->a(Lfreemarker/core/Configurable;Z)Ljava/util/Set;

    move-result-object p0

    new-instance v1, Lc1d;

    if-eqz p1, :cond_0

    sget-object p1, Lxe1;->d0:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lxe1;->c0:[Ljava/lang/String;

    :goto_0
    invoke-direct {v1, p1}, Lc1d;-><init>([Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Lg1d;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public final z0()Lqfa;
    .locals 1

    invoke-virtual {p0}, Lxe1;->F0()Lfreemarker/template/Version;

    move-result-object v0

    invoke-virtual {p0}, Lxe1;->P0()Lqfa;

    move-result-object p0

    invoke-static {v0, p0}, Lxe1;->o0(Lfreemarker/template/Version;Lqfa;)Lqfa;

    move-result-object p0

    return-object p0
.end method
