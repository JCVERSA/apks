.class public final synthetic Lq27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lc37;

.field public final synthetic c:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lc37;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq27;->b:Lc37;

    iput-object p2, p0, Lq27;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lq27;->b:Lc37;

    iget-object p0, p0, Lq27;->c:Landroid/net/Uri;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Lc37;->i(Lc37;Landroid/net/Uri;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
