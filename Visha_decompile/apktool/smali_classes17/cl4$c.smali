.class public Lcl4$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcl4;


# direct methods
.method public constructor <init>(Lcl4;)V
    .locals 0

    iput-object p1, p0, Lcl4$c;->a:Lcl4;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcl4$c;->a:Lcl4;

    invoke-virtual {p0}, Lcl4;->n()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcl4$c;->a:Lcl4;

    invoke-virtual {p0}, Lcl4;->o()V

    :cond_1
    :goto_0
    return-void
.end method
