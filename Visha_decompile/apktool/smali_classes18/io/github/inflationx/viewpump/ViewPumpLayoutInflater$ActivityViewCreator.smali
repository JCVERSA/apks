.class Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ActivityViewCreator;
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
    name = "ActivityViewCreator"
.end annotation


# instance fields
.field private final inflater:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ActivityViewCreator;->inflater:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    iput-object p2, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ActivityViewCreator;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ActivityViewCreator;->inflater:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    iget-object v2, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$ActivityViewCreator;->view:Landroid/view/View;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;->access$000(Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
