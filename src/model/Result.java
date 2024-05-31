package model;

public class Result {
    String id;
    String rallyId;
    String driverId;
    String stageId;
    int timeSecond;
    int timeMillis;

    // Constructor
    public Result() {
    }

    public Result(String id, String rallyId, String driverId, String stageId, int timeSecond, int timeMillis) {
        this.setId(id);
        this.setRallyId(rallyId);
        this.setDriverId(driverId);
        this.setStageId(stageId);
        this.setTimeSecond(timeSecond);
        this.setTimeMillis(timeMillis);
    }

    // Getters and setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getRallyId() {
        return rallyId;
    }

    public void setRallyId(String rallyId) {
        this.rallyId = rallyId;
    }

    public String getDriverId() {
        return driverId;
    }

    public void setDriverId(String driverId) {
        this.driverId = driverId;
    }

    public String getStageId() {
        return stageId;
    }

    public void setStageId(String stageId) {
        this.stageId = stageId;
    }

    public int getTimeSecond() {
        return timeSecond;
    }

    public void setTimeSecond(int timeSecond) {
        this.timeSecond = timeSecond;
    }

    public int getTimeMillis() {
        return timeMillis;
    }

    public void setTimeMillis(int timeMillis) {
        this.timeMillis = timeMillis;
    }

}
