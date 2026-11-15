.class public final Lmfd$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmfd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:[Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lmfd;Ljava/lang/String;J[Ljava/io/File;[JLmfd$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lmfd$e;->a:[Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lmfd$e;->a:[Ljava/io/File;

    aget-object p0, p0, p1

    return-object p0
.end method
