.class public abstract Lk0f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leze;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Leze;

    const-string v1, ""

    const/4 v2, 0x4

    const-string v3, "gads:pan:experiment_id"

    invoke-direct {v0, v3, v1, v2}, Leze;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v0, Lk0f;->a:Leze;

    return-void
.end method
