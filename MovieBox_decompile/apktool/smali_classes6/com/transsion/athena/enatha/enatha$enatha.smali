.class Lcom/transsion/athena/enatha/enatha$enatha;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/athena/data/anateh/enatha;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/athena/enatha/enatha;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/athena/data/anateh/enatha<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/transsion/athena/enatha/enatha;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "v"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lcom/transsion/ga/anateh;

    .line 14
    .line 15
    const-string v1, "cleanupEvents_oom"

    .line 16
    .line 17
    invoke-direct {p1, v1, v0}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
