.class public final La/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/community/oneroom/nu/mm/b;


# direct methods
.method public constructor <init>(Lcom/community/oneroom/nu/mm/b;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/m;->a:Lcom/community/oneroom/nu/mm/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 22
    iget-object p2, p0, La/m;->a:Lcom/community/oneroom/nu/mm/b;

    iput-boolean p1, p2, Lcom/community/oneroom/nu/mm/b;->c:Z

    .line 22
    invoke-virtual {p2}, Lcom/community/oneroom/nu/mm/b;->d()V

    .line 362
    sget-object p1, La/k;->q:La/k;

    invoke-virtual {p1}, La/k;->b()V

    .line 22
    invoke-virtual {p2}, Lcom/community/oneroom/nu/mm/b;->c()V

    return-void
.end method
