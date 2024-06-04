package model;

import annotation.Column;
import annotation.Table;

@Table("v_driver_global_points_penalty")
public class Penalty {
    @Column("rank")
    long rank;

    @Column("id")
    String id;
    
    @Column("season_id")
    String seasonId;

    @Column("total_time_millis")
    float time;

    @Column("point")
    int point;


    public long getRank() {
        return rank;
    }
    public void setRank(long rank) {
        this.rank = rank;
    }
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getSeasonId() {
        return seasonId;
    }
    public void setSeasonId(String seasonId) {
        this.seasonId = seasonId;
    }
    public float getTime() {
        return time;
    }
    public void setTime(float time) {
        this.time = time;
    }
    public int getPoint() {
        return point;
    }
    public void setPoint(int point) {
        this.point = point;
    }
}
