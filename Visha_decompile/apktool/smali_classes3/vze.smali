.class public abstract Lvze;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leze;

.field public static final b:Leze;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gads:debug_logging_feature:enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lvze;->a:Leze;

    const-string v0, "gads:debug_logging_feature:intercept_web_view"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lvze;->b:Leze;

    return-void
.end method
