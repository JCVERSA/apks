.class public final synthetic Lyj8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llf7;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyj8;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lyj8;->b:Z

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lyj8;->a:Landroid/content/Context;

    iget-boolean p0, p0, Lyj8;->b:Z

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p0, p1}, Lzj8;->a(Landroid/content/Context;ZLjava/lang/Void;)V

    return-void
.end method
