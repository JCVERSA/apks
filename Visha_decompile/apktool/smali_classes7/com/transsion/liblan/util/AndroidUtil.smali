.class public Lcom/transsion/liblan/util/AndroidUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IS_JELLY_BEAN_MR_2_OR_LATER:Z

.field public static final IS_KIT_KAT_OR_LATER:Z

.field public static final IS_LOLLI_POP_OR_LATER:Z

.field public static final IS_MARSH_MALLOW_OR_LATER:Z

.field public static final IS_NOUGAT_MR_1_OR_LATER:Z

.field public static final IS_NOUGAT_OR_LATER:Z

.field public static final IS_O_OR_LATER:Z

.field public static final IS_P_OR_LATER:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/liblan/util/AndroidUtil;->IS_P_OR_LATER:Z

    sput-boolean v0, Lcom/transsion/liblan/util/AndroidUtil;->IS_O_OR_LATER:Z

    sput-boolean v0, Lcom/transsion/liblan/util/AndroidUtil;->IS_NOUGAT_MR_1_OR_LATER:Z

    sput-boolean v0, Lcom/transsion/liblan/util/AndroidUtil;->IS_NOUGAT_OR_LATER:Z

    sput-boolean v0, Lcom/transsion/liblan/util/AndroidUtil;->IS_MARSH_MALLOW_OR_LATER:Z

    sput-boolean v0, Lcom/transsion/liblan/util/AndroidUtil;->IS_LOLLI_POP_OR_LATER:Z

    sput-boolean v0, Lcom/transsion/liblan/util/AndroidUtil;->IS_KIT_KAT_OR_LATER:Z

    sput-boolean v0, Lcom/transsion/liblan/util/AndroidUtil;->IS_JELLY_BEAN_MR_2_OR_LATER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FileToUri(Ljava/io/File;)Landroid/net/Uri;
    .locals 0

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static LocationToUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "location has no scheme"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static PathToUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static UriToFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v1, "file://"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static resolveActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/liblan/util/AndroidUtil;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
