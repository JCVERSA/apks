.class public final Ll57;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll57;

.field public static b:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll57;

    invoke-direct {v0}, Ll57;-><init>()V

    sput-object v0, Ll57;->a:Ll57;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ll57;->b:Landroid/graphics/Typeface;

    if-nez p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string p1, "tossymbol.ttf"

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Ll57;->b:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "font icon load error"

    invoke-static {p0}, Lbq5;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0
.end method

.method public final getCachedTypeface()Landroid/graphics/Typeface;
    .locals 0

    sget-object p0, Ll57;->b:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public final setCachedTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    sput-object p1, Ll57;->b:Landroid/graphics/Typeface;

    return-void
.end method
