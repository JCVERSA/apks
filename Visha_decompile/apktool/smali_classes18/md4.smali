.class public final Lmd4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/a;
.implements Lmga;
.implements Lnga;
.implements Lpfa;
.implements Lyfa;


# static fields
.field public static final b:Lzfa;

.field public static final c:Lbfa;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lmd4;

    invoke-direct {v0}, Lmd4;-><init>()V

    sput-object v0, Lmd4;->b:Lzfa;

    new-instance v0, Lfreemarker/template/SimpleCollection;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lmd4;->c:Lbfa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lzfa;
    .locals 1

    sget-object v0, Lmd4;->b:Lzfa;

    return-object v0
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public get(I)Lzfa;
    .locals 0

    .line 1
    new-instance p0, Lfreemarker/template/TemplateModelException;

    const-string p1, "Empty list"

    invoke-direct {p0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public get(Ljava/lang/String;)Lzfa;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAsBoolean()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public keys()Lbfa;
    .locals 0

    sget-object p0, Lmd4;->c:Lbfa;

    return-object p0
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public values()Lbfa;
    .locals 0

    sget-object p0, Lmd4;->c:Lbfa;

    return-object p0
.end method
