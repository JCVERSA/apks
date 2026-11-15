.class public Lt44;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Lt44;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Throwable;

.field public c:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt44;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt44;-><init>(Ljava/lang/String;)V

    sput-object v0, Lt44;->d:Lt44;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lt44;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lt44;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lt44;->b:Ljava/lang/Throwable;

    .line 5
    iput-object p2, p0, Lt44;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lt44;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lt44;->b:Ljava/lang/Throwable;

    return-object p0
.end method
