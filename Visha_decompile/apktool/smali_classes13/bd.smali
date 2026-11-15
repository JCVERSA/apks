.class public final synthetic Lbd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd;->b:Landroid/widget/ImageView;

    iput p2, p0, Lbd;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbd;->b:Landroid/widget/ImageView;

    iget p0, p0, Lbd;->c:I

    invoke-static {v0, p0}, Lcd;->a(Landroid/widget/ImageView;I)V

    return-void
.end method
