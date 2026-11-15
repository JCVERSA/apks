.class public Lcl4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl4;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcl4;


# direct methods
.method public constructor <init>(Lcl4;)V
    .locals 0

    iput-object p1, p0, Lcl4$b;->b:Lcl4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 0

    iget-object p0, p0, Lcl4$b;->b:Lcl4;

    iget-boolean p0, p0, Lcl4;->c:Z

    return-void
.end method
