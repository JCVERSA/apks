.class public final synthetic Lmad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Le74;


# direct methods
.method public synthetic constructor <init>(Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmad;->b:Le74;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmad;->b:Le74;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/transsion/aicore/nexusflow/e;->a(Le74;Landroid/os/Bundle;)Lzfb;

    move-result-object p0

    return-object p0
.end method
