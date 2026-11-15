.class public Lyz9;
.super Lrd0;
.source "SourceFile"

# interfaces
.implements Lmga;


# static fields
.field public static final h:Lfq6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxz9;

    invoke-direct {v0}, Lxz9;-><init>()V

    sput-object v0, Lyz9;->h:Lfq6;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lfreemarker/ext/beans/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lrd0;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/b;)V

    return-void
.end method


# virtual methods
.method public getAsString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
