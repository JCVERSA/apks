.class public Lcom/transsion/athena/enatha/enatha$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/athena/data/anateh/enatha;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/athena/enatha/enatha;->D(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/athena/enatha/enatha;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "v"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/transsion/ga/anateh;

    const-string v0, "cleanupEvents_oom"

    invoke-direct {p1, v0, p0}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lzbd;->a()Lzbd;

    move-result-object p0

    invoke-virtual {p0, p1}, Lzbd;->c(Lcom/transsion/ga/anateh;)V

    return-void
.end method
