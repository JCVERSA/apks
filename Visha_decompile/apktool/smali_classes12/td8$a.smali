.class public Ltd8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltd8$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltd8;->d(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ltd8;


# direct methods
.method public constructor <init>(Ltd8;)V
    .locals 0

    iput-object p1, p0, Ltd8$a;->a:Ltd8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Ltd8$a;->a:Ltd8;

    invoke-static {p0}, Ltd8;->a(Ltd8;)Ltd8$d;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ltd8$d;->e(ILandroid/view/View;)V

    return-void
.end method
