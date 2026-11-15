.class public final Lejb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lejb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lejb;

    invoke-direct {v0}, Lejb;-><init>()V

    sput-object v0, Lejb;->a:Lejb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "url"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    sget-object p0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method
