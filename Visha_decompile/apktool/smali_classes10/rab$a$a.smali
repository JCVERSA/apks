.class public final Lrab$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrab$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lrab$a$a;

.field public static final b:Lrab;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrab$a$a;

    invoke-direct {v0}, Lrab$a$a;-><init>()V

    sput-object v0, Lrab$a$a;->a:Lrab$a$a;

    new-instance v0, Lrab;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrab;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lrab$a$a;->b:Lrab;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lrab;
    .locals 0

    sget-object p0, Lrab$a$a;->b:Lrab;

    return-object p0
.end method
