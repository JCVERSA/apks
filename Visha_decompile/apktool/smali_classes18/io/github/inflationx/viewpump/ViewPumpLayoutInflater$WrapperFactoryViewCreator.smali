.class Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactoryViewCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/github/inflationx/viewpump/FallbackViewCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrapperFactoryViewCreator"
.end annotation


# instance fields
.field protected final mFactory:Landroid/view/LayoutInflater$Factory;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactoryViewCreator;->mFactory:Landroid/view/LayoutInflater$Factory;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactoryViewCreator;->mFactory:Landroid/view/LayoutInflater$Factory;

    invoke-interface {p0, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
