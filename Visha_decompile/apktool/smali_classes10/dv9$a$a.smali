.class public final Ldv9$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldv9$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ldv9$a$a;

.field public static final b:Ldv9;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldv9$a$a;

    invoke-direct {v0}, Ldv9$a$a;-><init>()V

    sput-object v0, Ldv9$a$a;->a:Ldv9$a$a;

    new-instance v0, Ldv9;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldv9;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldv9$a$a;->b:Ldv9;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldv9;
    .locals 0

    sget-object p0, Ldv9$a$a;->b:Ldv9;

    return-object p0
.end method
