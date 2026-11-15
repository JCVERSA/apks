.class public Lfreemarker/core/BuiltInsForSequences$sortBI$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences$sortBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lfreemarker/core/BuiltInsForSequences$sortBI$a;->a:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lfreemarker/core/BuiltInsForSequences$sortBI$a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lzl0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/BuiltInsForSequences$sortBI$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lfreemarker/core/BuiltInsForSequences$sortBI$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/BuiltInsForSequences$sortBI$a;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic b(Lfreemarker/core/BuiltInsForSequences$sortBI$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/BuiltInsForSequences$sortBI$a;->b:Ljava/lang/Object;

    return-object p0
.end method
