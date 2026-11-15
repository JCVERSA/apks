.class public final Ls45$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls45$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ls45$a$a;

.field public static final b:Ls45;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls45$a$a;

    invoke-direct {v0}, Ls45$a$a;-><init>()V

    sput-object v0, Ls45$a$a;->a:Ls45$a$a;

    new-instance v0, Ls45;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls45;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ls45$a$a;->b:Ls45;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ls45;
    .locals 0

    sget-object p0, Ls45$a$a;->b:Ls45;

    return-object p0
.end method
