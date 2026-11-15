.class public final synthetic Lw8d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(JLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lw8d;->b:J

    iput-object p3, p0, Lw8d;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lw8d;->b:J

    iget-object p0, p0, Lw8d;->c:Landroid/os/Bundle;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/aicore/nexusflow/d;->a(JLandroid/os/Bundle;Landroid/os/Bundle;)Lzfb;

    move-result-object p0

    return-object p0
.end method
