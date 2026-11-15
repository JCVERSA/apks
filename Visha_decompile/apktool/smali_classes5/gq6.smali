.class public final synthetic Lgq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Landroidx/lifecycle/MediatorLiveData;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/MediatorLiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgq6;->b:Landroidx/lifecycle/MediatorLiveData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lgq6;->b:Landroidx/lifecycle/MediatorLiveData;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lhq6;->c(Landroidx/lifecycle/MediatorLiveData;Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method
