.class public Lsd8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsd8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lsd8;


# direct methods
.method public constructor <init>(Lsd8;)V
    .locals 0

    iput-object p1, p0, Lsd8$a;->b:Lsd8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 0

    iget-object p0, p0, Lsd8$a;->b:Lsd8;

    invoke-virtual {p0}, Lsd8;->j()V

    const/4 p0, 0x1

    return p0
.end method
