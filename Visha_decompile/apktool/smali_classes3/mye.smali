.class public abstract Lmye;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmye;

.field public static final b:Lmye;

.field public static final c:Lmye;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljye;

    invoke-direct {v0}, Ljye;-><init>()V

    sput-object v0, Lmye;->a:Lmye;

    new-instance v0, Lkye;

    invoke-direct {v0}, Lkye;-><init>()V

    sput-object v0, Lmye;->b:Lmye;

    new-instance v0, Llye;

    invoke-direct {v0}, Llye;-><init>()V

    sput-object v0, Lmye;->c:Lmye;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
