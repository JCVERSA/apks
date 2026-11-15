.class public final Lfreemarker/template/SimpleNumber;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhga;
.implements Ljava/io/Serializable;


# instance fields
.field private final value:Ljava/lang/Number;


# direct methods
.method public constructor <init>(B)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    iput-object v0, p0, Lfreemarker/template/SimpleNumber;->value:Ljava/lang/Number;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lfreemarker/template/SimpleNumber;->value:Ljava/lang/Number;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lfreemarker/template/SimpleNumber;->value:Ljava/lang/Number;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lfreemarker/template/SimpleNumber;->value:Ljava/lang/Number;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lfreemarker/template/SimpleNumber;->value:Ljava/lang/Number;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/template/SimpleNumber;->value:Ljava/lang/Number;

    return-void
.end method

.method public constructor <init>(S)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    iput-object v0, p0, Lfreemarker/template/SimpleNumber;->value:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public getAsNumber()Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lfreemarker/template/SimpleNumber;->value:Ljava/lang/Number;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/template/SimpleNumber;->value:Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
