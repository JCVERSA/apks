.class public final Lkga$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lkga$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkga$a;

    invoke-direct {v0}, Lkga$a;-><init>()V

    sput-object v0, Lkga$a;->a:Lkga$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkga;
    .locals 0

    new-instance p0, Lkga$a$a;

    invoke-direct {p0}, Lkga$a$a;-><init>()V

    return-object p0
.end method

.method public final b(Ljava/util/Map;)Lkga;
    .locals 0

    const-string p0, "map"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lkga$a$b;

    invoke-direct {p0, p1}, Lkga$a$b;-><init>(Ljava/util/Map;)V

    return-object p0
.end method
