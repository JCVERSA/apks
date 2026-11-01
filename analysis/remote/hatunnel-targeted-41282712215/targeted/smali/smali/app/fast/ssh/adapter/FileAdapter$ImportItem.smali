.class public Lapp/fast/ssh/adapter/FileAdapter$ImportItem;
.super Ljava/lang/Object;
.source "FileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/fast/ssh/adapter/FileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImportItem"
.end annotation


# instance fields
.field file_name:Ljava/lang/String;

.field icon:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lapp/fast/ssh/adapter/FileAdapter$ImportItem;->icon:I

    iput-object p2, p0, Lapp/fast/ssh/adapter/FileAdapter$ImportItem;->file_name:Ljava/lang/String;

    return-void
.end method
