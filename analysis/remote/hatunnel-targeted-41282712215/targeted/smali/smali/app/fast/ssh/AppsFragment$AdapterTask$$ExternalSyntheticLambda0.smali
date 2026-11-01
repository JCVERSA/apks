.class public final synthetic Lapp/fast/ssh/AppsFragment$AdapterTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lapp/fast/ssh/adapter/AppsAdapter$App;

    check-cast p2, Lapp/fast/ssh/adapter/AppsAdapter$App;

    invoke-static {p1, p2}, Lapp/fast/ssh/AppsFragment$AdapterTask;->lambda$doInBackground$0(Lapp/fast/ssh/adapter/AppsAdapter$App;Lapp/fast/ssh/adapter/AppsAdapter$App;)I

    move-result p1

    return p1
.end method
