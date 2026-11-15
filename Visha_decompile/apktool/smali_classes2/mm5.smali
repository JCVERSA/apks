.class public final synthetic Lmm5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Lom5;


# direct methods
.method public synthetic constructor <init>(Lom5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmm5;->b:Lom5;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lmm5;->b:Lom5;

    invoke-static {p0, p1}, Lom5;->b(Lom5;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
