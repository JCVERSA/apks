.class Lfreemarker/template/DefaultListAdapter$DefaultListAdapterWithCollectionSupport;
.super Lfreemarker/template/DefaultListAdapter;
.source "SourceFile"

# interfaces
.implements Lbfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/DefaultListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultListAdapterWithCollectionSupport"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Lgv8;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/template/DefaultListAdapter;-><init>(Ljava/util/List;Lgv8;Lf22;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lgv8;Lf22;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/template/DefaultListAdapter$DefaultListAdapterWithCollectionSupport;-><init>(Ljava/util/List;Lgv8;)V

    return-void
.end method


# virtual methods
.method public iterator()Lbga;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    new-instance v0, Lfreemarker/template/DefaultListAdapter$a;

    iget-object v1, p0, Lfreemarker/template/DefaultListAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0}, Lnpc;->getObjectWrapper()Lgc7;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lfreemarker/template/DefaultListAdapter$a;-><init>(Ljava/util/Iterator;Lgc7;Lf22;)V

    return-object v0
.end method
