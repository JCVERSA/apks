.class public final Loi4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loi4$a;
    }
.end annotation


# static fields
.field public static final b:Loi4;


# instance fields
.field public final a:Lwx9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loi4$a;

    invoke-direct {v0}, Loi4$a;-><init>()V

    invoke-virtual {v0}, Loi4$a;->a()Loi4;

    move-result-object v0

    sput-object v0, Loi4;->b:Loi4;

    return-void
.end method

.method public constructor <init>(Lwx9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loi4;->a:Lwx9;

    return-void
.end method

.method public static b()Loi4$a;
    .locals 1

    new-instance v0, Loi4$a;

    invoke-direct {v0}, Loi4$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lwx9;
    .locals 0

    iget-object p0, p0, Loi4;->a:Lwx9;

    return-object p0
.end method
