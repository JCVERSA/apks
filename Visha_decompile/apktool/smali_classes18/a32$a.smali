.class public La32$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:La32$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La32$a;

    invoke-direct {v0}, La32$a;-><init>()V

    sput-object v0, La32$a;->a:La32$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b()La32$a;
    .locals 1

    sget-object v0, La32$a;->a:La32$a;

    return-object v0
.end method


# virtual methods
.method public a(Lxd0;)Lfreemarker/ext/beans/b;
    .locals 1

    new-instance p0, Lz22;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lz22;-><init>(Lxd0;Z)V

    return-object p0
.end method
