.class public final Log9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Log9$a;
    }
.end annotation


# static fields
.field public static final c:Log9$a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lorg/acra/config/CoreConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Log9$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Log9$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Log9;->c:Log9$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Log9;->a:Landroid/content/Context;

    iput-object p2, p0, Log9;->b:Lorg/acra/config/CoreConfiguration;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/SharedPreferences;
    .locals 2

    iget-object v0, p0, Log9;->b:Lorg/acra/config/CoreConfiguration;

    invoke-virtual {v0}, Lorg/acra/config/CoreConfiguration;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Log9;->a:Landroid/content/Context;

    iget-object p0, p0, Log9;->b:Lorg/acra/config/CoreConfiguration;

    invoke-virtual {p0}, Lorg/acra/config/CoreConfiguration;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "{\n            context.ge\u2026t.MODE_PRIVATE)\n        }"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Log9;->a:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "{\n            @Suppress(\u2026rences(context)\n        }"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
