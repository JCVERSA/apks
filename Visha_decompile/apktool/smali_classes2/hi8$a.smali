.class public final Lhi8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhi8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:[Lhi8$b;


# direct methods
.method public varargs constructor <init>([Lhi8$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhi8$a;->a:[Lhi8$b;

    return-void
.end method


# virtual methods
.method public a(I)Lhi8$b;
    .locals 0

    iget-object p0, p0, Lhi8$a;->a:[Lhi8$b;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public b()I
    .locals 0

    iget-object p0, p0, Lhi8$a;->a:[Lhi8$b;

    array-length p0, p0

    return p0
.end method
