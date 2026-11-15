.class public final synthetic Lo27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Lc37;


# direct methods
.method public synthetic constructor <init>(Lc37;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo27;->b:Lc37;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lo27;->b:Lc37;

    invoke-static {p0, p1}, Lc37;->m(Lc37;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
