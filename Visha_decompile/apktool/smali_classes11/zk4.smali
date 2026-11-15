.class public final synthetic Lzk4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Lal4;

.field public final synthetic b:[I

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lal4;[ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzk4;->a:Lal4;

    iput-object p2, p0, Lzk4;->b:[I

    iput-object p3, p0, Lzk4;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lzk4;->a:Lal4;

    iget-object v1, p0, Lzk4;->b:[I

    iget-object p0, p0, Lzk4;->c:Landroid/view/View;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lal4;->b(Lal4;[ILandroid/view/View;Ljava/lang/String;)V

    return-void
.end method
