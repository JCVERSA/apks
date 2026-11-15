.class public final synthetic Loii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leki;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 4

    new-instance p0, Lqii;

    invoke-direct {p0}, Lqii;-><init>()V

    new-instance v0, Lpii;

    invoke-direct {v0}, Lpii;-><init>()V

    new-instance v1, Ljhi;

    const-class v2, Lthi;

    const-class v3, Luji;

    invoke-direct {v1, v2, v3, v0}, Ljhi;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lkhi;)V

    invoke-virtual {p0, v1}, Lqii;->g(Lmhi;)V

    return-object p0
.end method
