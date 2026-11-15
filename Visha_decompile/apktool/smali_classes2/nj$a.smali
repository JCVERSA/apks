.class public Lnj$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnj;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnj;


# direct methods
.method public constructor <init>(Lnj;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lnj$a;->a:Lnj;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lnj$a;->a:Lnj;

    invoke-static {p0, p1}, Lnj;->a(Lnj;Landroid/os/Message;)V

    return-void
.end method
