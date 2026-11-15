.class public Lcom/mgmi/trace/PerformanceBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# instance fields
.field private $201Cpu:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "201_cpu"
    .end annotation
.end field

.field private $201Mem:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "201_mem"
    .end annotation
.end field

.field private $203Cpu:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "203_cpu"
    .end annotation
.end field

.field private $203Mem:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "203_mem"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get$201Cpu()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/trace/PerformanceBean;->$201Cpu:Ljava/lang/String;

    return-object p0
.end method

.method public get$201Mem()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/trace/PerformanceBean;->$201Mem:Ljava/lang/String;

    return-object p0
.end method

.method public get$203Cpu()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/trace/PerformanceBean;->$203Cpu:Ljava/lang/String;

    return-object p0
.end method

.method public get$203Mem()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/trace/PerformanceBean;->$203Mem:Ljava/lang/String;

    return-object p0
.end method

.method public set$201Cpu(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/trace/PerformanceBean;->$201Cpu:Ljava/lang/String;

    return-void
.end method

.method public set$201Mem(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/trace/PerformanceBean;->$201Mem:Ljava/lang/String;

    return-void
.end method

.method public set$203Cpu(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/trace/PerformanceBean;->$203Cpu:Ljava/lang/String;

    return-void
.end method

.method public set$203Mem(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/trace/PerformanceBean;->$203Mem:Ljava/lang/String;

    return-void
.end method
