package com.transsion.cloudcore.db;

import androidx.p004lifecycle.LiveData;
import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Transaction;
import androidx.room.Update;
import java.util.List;

@Dao
public interface CloudTaskDao {
    @Query("DELETE FROM cloud_task WHERE task_type = 1 OR (task_type = 2 AND download_source = 1)")
    void deleteAllCloudTask();

    @Query("DELETE FROM cloud_task")
    void deleteAllTasks();

    @Delete
    void deleteTask(CloudTaskEntity cloudTaskEntity);

    @Query("DELETE FROM cloud_task WHERE task_id = :taskId")
    void deleteTaskById(String str);

    @Delete
    void deleteTasks(List<CloudTaskEntity> list);

    @Query("DELETE FROM cloud_task WHERE task_id IN (:taskIds)")
    @Transaction
    void deleteTasksByIds(List<String> list);

    @Query("SELECT * FROM cloud_task WHERE task_type = 2 AND task_status = 5 ORDER BY update_time DESC")
    List<CloudTaskEntity> getAllDownloadedTask();

    @Query("SELECT * FROM cloud_task WHERE task_type = 2 AND task_status = 5 ORDER BY update_time DESC")
    LiveData<List<CloudTaskEntity>> getAllDownloadedTaskLiveData();

    @Query("SELECT * FROM cloud_task WHERE task_type = 2 AND task_status != 5 ORDER BY create_time DESC")
    List<CloudTaskEntity> getAllDownloadingTask();

    @Query("SELECT * FROM cloud_task WHERE task_type = 2 AND task_status != 5 ORDER BY create_time DESC")
    LiveData<List<CloudTaskEntity>> getAllDownloadingTaskLiveData();

    @Query("SELECT * FROM cloud_task WHERE task_status = 5 ORDER BY update_time DESC")
    List<CloudTaskEntity> getAllFinishTask();

    @Query("SELECT * FROM cloud_task WHERE task_status = 5 ORDER BY update_time DESC")
    LiveData<List<CloudTaskEntity>> getAllFinishTaskLiveData();

    @Query("SELECT * FROM cloud_task WHERE task_type = 1 AND task_status = 5 ORDER BY update_time DESC")
    List<CloudTaskEntity> getAllUploadedTask();

    @Query("SELECT * FROM cloud_task WHERE task_type = 1 AND task_status = 5 ORDER BY update_time DESC")
    LiveData<List<CloudTaskEntity>> getAllUploadedTaskLiveData();

    @Query("SELECT * FROM cloud_task WHERE task_type = 1 AND task_status != 5 ORDER BY create_time DESC")
    List<CloudTaskEntity> getAllUploadingTask();

    @Query("SELECT * FROM cloud_task WHERE task_type = 1 AND task_status != 5 ORDER BY create_time DESC")
    LiveData<List<CloudTaskEntity>> getAllUploadingTaskLiveData();

    @Query("SELECT * FROM cloud_task WHERE task_id = :taskId")
    CloudTaskEntity getTaskById(String str);

    @Query("SELECT * FROM cloud_task WHERE task_id = :taskId")
    LiveData<CloudTaskEntity> getTaskByIdLiveData(String str);

    @Query("SELECT COUNT(*) FROM cloud_task WHERE task_type = :taskType AND task_status = :taskStatus")
    int getTaskCountByTypeAndStatus(int i, int i2);

    @Query("SELECT COUNT(*) FROM cloud_task")
    LiveData<Integer> getTaskCountLiveData();

    @Query("SELECT * FROM cloud_task WHERE cloud_file_id = :cloudFileId")
    List<CloudTaskEntity> getTasksByCloudFileId(String str);

    @Query("SELECT * FROM cloud_task WHERE local_file_path = :localFilePath")
    List<CloudTaskEntity> getTasksByLocalFilePath(String str);

    @Query("SELECT * FROM cloud_task WHERE task_status = :taskStatus ORDER BY update_time DESC LIMIT :limit OFFSET :offset")
    List<CloudTaskEntity> getTasksByStatusWithPaging(int i, int i2, int i3);

    @Insert(onConflict = 1)
    void insertTask(CloudTaskEntity cloudTaskEntity);

    @Insert(onConflict = 1)
    @Transaction
    void insertTasks(List<CloudTaskEntity> list);

    @Query("UPDATE cloud_task SET local_file_id = :localFileId,progress = 1.0, task_status = 5, update_time = :updateTime, local_file_path = :localFilePath, file_name = :localFileName, download_source = :downloadSource,isLocalFileExist = 1,isCloudFileExist = CASE WHEN :downloadSource = 1 THEN 1 ELSE 0 END WHERE task_id = :taskId")
    int updateDownloadTaskToFinished(String str, int i, long j, int i2, String str2, String str3);

    @Query("UPDATE cloud_task SET local_file_id = :localFileId,progress = 1.0, task_status = 5, update_time = :updateTime, local_file_path = :localFilePath, file_name = :localFileName, download_source = :downloadSource,mime_type =:mimeType,file_type =:fileType,isLocalFileExist = 1,isCloudFileExist = CASE WHEN :downloadSource = 1 THEN 1 ELSE 0 END WHERE task_id = :taskId")
    int updateDownloadTaskToFinished(String str, int i, long j, int i2, String str2, String str3, String str4, int i3);

    @Update
    void updateTask(CloudTaskEntity cloudTaskEntity);

    @Query("UPDATE cloud_task SET file_name = :fileName, update_time = :updateTime WHERE task_id = :taskId")
    int updateTaskFileName(String str, String str2, long j);

    @Query("UPDATE cloud_task SET progress = :progress, update_time = :updateTime WHERE task_id = :taskId")
    void updateTaskProgress(String str, float f, long j);

    @Query("UPDATE cloud_task SET task_status = :status, update_time = :updateTime WHERE task_id = :taskId")
    void updateTaskStatus(String str, int i, long j);

    @Query("UPDATE cloud_task SET task_status = :status, progress = :progress, update_time = :updateTime WHERE task_id = :taskId")
    void updateTaskStatusAndProgress(String str, int i, float f, long j);

    @Update
    void updateTasks(List<CloudTaskEntity> list);

    @Query("UPDATE cloud_task SET local_file_id = :localFileId,progress = 1.0, task_status = 5, update_time = :updateTime, cloud_file_id = :cloudFileId, file_name = :fileName,isCloudFileExist = 1,isLocalFileExist = 1  WHERE task_id = :taskId")
    int updateUploadTaskToFinished(String str, int i, long j, String str2, String str3);

    @Query("UPDATE cloud_task SET local_file_id = :localFileId,progress = 1.0, task_status = 5, update_time = :updateTime, cloud_file_id = :cloudFileId, file_name = :fileName,mime_type =:mimeType,file_type =:fileType, isCloudFileExist = 1,isLocalFileExist = 1  WHERE task_id = :taskId")
    int updateUploadTaskToFinished(String str, int i, long j, String str2, String str3, String str4, int i2);
}
