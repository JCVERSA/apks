.class public final synthetic Lxz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Le74;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Le74;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxz0;->b:Le74;

    iput p2, p0, Lxz0;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lxz0;->b:Le74;

    iget p0, p0, Lxz0;->c:I

    invoke-static {v0, p0, p1}, Lcom/transsion/cloud/weigets/CloudFavoriteCardView;->b(Le74;ILandroid/view/View;)V

    return-void
.end method
