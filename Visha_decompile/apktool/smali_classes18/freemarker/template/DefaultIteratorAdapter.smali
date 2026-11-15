.class public Lfreemarker/template/DefaultIteratorAdapter;
.super Lnpc;
.source "SourceFile"

# interfaces
.implements Lbfa;
.implements Lc8;
.implements Llpc;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/DefaultIteratorAdapter$a;
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;

.field private iteratorOwned:Z


# direct methods
.method private constructor <init>(Ljava/util/Iterator;Lgc7;)V
    .locals 0

    invoke-direct {p0, p2}, Lnpc;-><init>(Lgc7;)V

    iput-object p1, p0, Lfreemarker/template/DefaultIteratorAdapter;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public static synthetic access$100(Lfreemarker/template/DefaultIteratorAdapter;)Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lfreemarker/template/DefaultIteratorAdapter;->iterator:Ljava/util/Iterator;

    return-object p0
.end method

.method public static synthetic access$200(Lfreemarker/template/DefaultIteratorAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lfreemarker/template/DefaultIteratorAdapter;->iteratorOwned:Z

    return p0
.end method

.method public static synthetic access$202(Lfreemarker/template/DefaultIteratorAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lfreemarker/template/DefaultIteratorAdapter;->iteratorOwned:Z

    return p1
.end method

.method public static adapt(Ljava/util/Iterator;Lgc7;)Lfreemarker/template/DefaultIteratorAdapter;
    .locals 1

    new-instance v0, Lfreemarker/template/DefaultIteratorAdapter;

    invoke-direct {v0, p0, p1}, Lfreemarker/template/DefaultIteratorAdapter;-><init>(Ljava/util/Iterator;Lgc7;)V

    return-object v0
.end method


# virtual methods
.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lfreemarker/template/DefaultIteratorAdapter;->getWrappedObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfreemarker/template/DefaultIteratorAdapter;->iterator:Ljava/util/Iterator;

    return-object p0
.end method

.method public iterator()Lbga;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    new-instance v0, Lfreemarker/template/DefaultIteratorAdapter$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfreemarker/template/DefaultIteratorAdapter$a;-><init>(Lfreemarker/template/DefaultIteratorAdapter;Ly12;)V

    return-object v0
.end method
