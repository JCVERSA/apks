.class public Lo1d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo1d;->d(Landroid/view/View$OnClickListener;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View$OnClickListener;

.field public final synthetic c:Lo1d;


# direct methods
.method public constructor <init>(Lo1d;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lo1d$a;->c:Lo1d;

    iput-object p2, p0, Lo1d$a;->b:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo1d$a;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    iget-object p0, p0, Lo1d$a;->c:Lo1d;

    invoke-virtual {p0}, Lo1d;->dismiss()V

    return-void
.end method
